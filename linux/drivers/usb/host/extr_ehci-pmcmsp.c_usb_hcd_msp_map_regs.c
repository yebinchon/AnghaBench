
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct mspusb_device {int * mab_regs; int * usbid_regs; struct platform_device dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 void* ioremap_nocache (int ,int ) ;
 int iounmap (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,char*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int usb_hcd_msp_map_regs(struct mspusb_device *dev)
{
 struct resource *res;
 struct platform_device *pdev = &dev->dev;
 u32 res_len;
 int retval;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (res == ((void*)0))
  return -ENOMEM;
 res_len = resource_size(res);
 if (!request_mem_region(res->start, res_len, "mab regs"))
  return -EBUSY;

 dev->mab_regs = ioremap_nocache(res->start, res_len);
 if (dev->mab_regs == ((void*)0)) {
  retval = -ENOMEM;
  goto err1;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 2);
 if (res == ((void*)0)) {
  retval = -ENOMEM;
  goto err2;
 }
 res_len = resource_size(res);
 if (!request_mem_region(res->start, res_len, "usbid regs")) {
  retval = -EBUSY;
  goto err2;
 }
 dev->usbid_regs = ioremap_nocache(res->start, res_len);
 if (dev->usbid_regs == ((void*)0)) {
  retval = -ENOMEM;
  goto err3;
 }

 return 0;
err3:
 res = platform_get_resource(pdev, IORESOURCE_MEM, 2);
 res_len = resource_size(res);
 release_mem_region(res->start, res_len);
err2:
 iounmap(dev->mab_regs);
err1:
 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 res_len = resource_size(res);
 release_mem_region(res->start, res_len);
 dev_err(&pdev->dev, "Failed to map non-EHCI regs.\n");
 return retval;
}
