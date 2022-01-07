
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct soc_device_attribute {char* family; void* soc_id; void* revision; int machine; } ;
struct soc_device {int dummy; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct soc_device*) ;
 int PTR_ERR (struct soc_device*) ;
 int dev_attr_soc_uid ;
 int device_create_file (int ,int *) ;
 struct soc_device_attribute* devm_kzalloc (int *,int,int ) ;
 int imx_scu_get_handle (int *) ;
 int imx_scu_soc_id () ;
 void* kasprintf (int ,char*,int,...) ;
 int kfree (void*) ;
 int of_property_read_string (int ,char*,int *) ;
 int of_root ;
 struct soc_device* soc_device_register (struct soc_device_attribute*) ;
 int soc_device_to_device (struct soc_device*) ;
 int soc_ipc_handle ;

__attribute__((used)) static int imx_scu_soc_probe(struct platform_device *pdev)
{
 struct soc_device_attribute *soc_dev_attr;
 struct soc_device *soc_dev;
 int id, ret;
 u32 val;

 ret = imx_scu_get_handle(&soc_ipc_handle);
 if (ret)
  return ret;

 soc_dev_attr = devm_kzalloc(&pdev->dev, sizeof(*soc_dev_attr),
        GFP_KERNEL);
 if (!soc_dev_attr)
  return -ENOMEM;

 soc_dev_attr->family = "Freescale i.MX";

 ret = of_property_read_string(of_root,
          "model",
          &soc_dev_attr->machine);
 if (ret)
  return ret;

 id = imx_scu_soc_id();
 if (id < 0)
  return -EINVAL;


 val = id & 0x1f;
 soc_dev_attr->soc_id = kasprintf(GFP_KERNEL, "0x%x", val);
 if (!soc_dev_attr->soc_id)
  return -ENOMEM;


 val = (id >> 5) & 0xf;
 val = (((val >> 2) + 1) << 4) | (val & 0x3);
 soc_dev_attr->revision = kasprintf(GFP_KERNEL,
        "%d.%d",
        (val >> 4) & 0xf,
        val & 0xf);
 if (!soc_dev_attr->revision) {
  ret = -ENOMEM;
  goto free_soc_id;
 }

 soc_dev = soc_device_register(soc_dev_attr);
 if (IS_ERR(soc_dev)) {
  ret = PTR_ERR(soc_dev);
  goto free_revision;
 }

 ret = device_create_file(soc_device_to_device(soc_dev),
     &dev_attr_soc_uid);
 if (ret)
  goto free_revision;

 return 0;

free_revision:
 kfree(soc_dev_attr->revision);
free_soc_id:
 kfree(soc_dev_attr->soc_id);
 return ret;
}
