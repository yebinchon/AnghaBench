
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct resource {scalar_t__ start; } ;
struct qcom_smem {TYPE_1__* regions; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
typedef int resource_size_t ;
struct TYPE_2__ {int size; scalar_t__ aux_base; int virt_base; } ;


 int EINVAL ;
 int ENOMEM ;
 int dev_err (struct device*,char*,char const*) ;
 int devm_ioremap_wc (struct device*,scalar_t__,int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char const*,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int qcom_smem_map_memory(struct qcom_smem *smem, struct device *dev,
    const char *name, int i)
{
 struct device_node *np;
 struct resource r;
 resource_size_t size;
 int ret;

 np = of_parse_phandle(dev->of_node, name, 0);
 if (!np) {
  dev_err(dev, "No %s specified\n", name);
  return -EINVAL;
 }

 ret = of_address_to_resource(np, 0, &r);
 of_node_put(np);
 if (ret)
  return ret;
 size = resource_size(&r);

 smem->regions[i].virt_base = devm_ioremap_wc(dev, r.start, size);
 if (!smem->regions[i].virt_base)
  return -ENOMEM;
 smem->regions[i].aux_base = (u32)r.start;
 smem->regions[i].size = size;

 return 0;
}
