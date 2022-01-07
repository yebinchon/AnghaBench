
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_device_attribute {char* machine; char* family; int soc_id; } ;
struct soc_device {int dummy; } ;
typedef struct soc_device regmap ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct soc_device*) ;
 int PTR_ERR (struct soc_device*) ;
 int REALVIEW_SYS_ID_OFFSET ;
 int dev_info (TYPE_1__*,char*,int,int) ;
 int device_create_file (int ,int *) ;
 int kfree (struct soc_device_attribute*) ;
 struct soc_device_attribute* kzalloc (int,int ) ;
 int of_property_read_string (struct device_node*,char*,int *) ;
 int realview_arch_attr ;
 int realview_board_attr ;
 int realview_build_attr ;
 int realview_coreid ;
 int realview_manf_attr ;
 int regmap_read (struct soc_device*,int ,int*) ;
 struct soc_device* soc_device_register (struct soc_device_attribute*) ;
 int soc_device_to_device (struct soc_device*) ;
 struct soc_device* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int realview_soc_probe(struct platform_device *pdev)
{
 struct regmap *syscon_regmap;
 struct soc_device *soc_dev;
 struct soc_device_attribute *soc_dev_attr;
 struct device_node *np = pdev->dev.of_node;
 int ret;

 syscon_regmap = syscon_regmap_lookup_by_phandle(np, "regmap");
 if (IS_ERR(syscon_regmap))
  return PTR_ERR(syscon_regmap);

 soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
 if (!soc_dev_attr)
  return -ENOMEM;

 ret = of_property_read_string(np, "compatible",
          &soc_dev_attr->soc_id);
 if (ret)
  return -EINVAL;

 soc_dev_attr->machine = "RealView";
 soc_dev_attr->family = "Versatile";
 soc_dev = soc_device_register(soc_dev_attr);
 if (IS_ERR(soc_dev)) {
  kfree(soc_dev_attr);
  return -ENODEV;
 }
 ret = regmap_read(syscon_regmap, REALVIEW_SYS_ID_OFFSET,
     &realview_coreid);
 if (ret)
  return -ENODEV;

 device_create_file(soc_device_to_device(soc_dev), &realview_manf_attr);
 device_create_file(soc_device_to_device(soc_dev), &realview_board_attr);
 device_create_file(soc_device_to_device(soc_dev), &realview_arch_attr);
 device_create_file(soc_device_to_device(soc_dev), &realview_build_attr);

 dev_info(&pdev->dev, "RealView Syscon Core ID: 0x%08x, HBI-%03x\n",
   realview_coreid,
   ((realview_coreid >> 16) & 0xfff));

 return 0;
}
