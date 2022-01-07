
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct cdns3 {int dev; int xhci_res; struct platform_device* host_dev; } ;


 int CDNS3_XHCI_RESOURCES_NUM ;
 int ENOMEM ;
 int PLATFORM_DEVID_AUTO ;
 int cdns3_drd_switch_host (struct cdns3*,int) ;
 int dev_err (int ,char*) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_resources (struct platform_device*,int ,int ) ;
 struct platform_device* platform_device_alloc (char*,int ) ;
 int platform_device_put (struct platform_device*) ;

__attribute__((used)) static int __cdns3_host_init(struct cdns3 *cdns)
{
 struct platform_device *xhci;
 int ret;

 cdns3_drd_switch_host(cdns, 1);

 xhci = platform_device_alloc("xhci-hcd", PLATFORM_DEVID_AUTO);
 if (!xhci) {
  dev_err(cdns->dev, "couldn't allocate xHCI device\n");
  return -ENOMEM;
 }

 xhci->dev.parent = cdns->dev;
 cdns->host_dev = xhci;

 ret = platform_device_add_resources(xhci, cdns->xhci_res,
         CDNS3_XHCI_RESOURCES_NUM);
 if (ret) {
  dev_err(cdns->dev, "couldn't add resources to xHCI device\n");
  goto err1;
 }

 ret = platform_device_add(xhci);
 if (ret) {
  dev_err(cdns->dev, "failed to register xHCI device\n");
  goto err1;
 }

 return 0;
err1:
 platform_device_put(xhci);
 return ret;
}
