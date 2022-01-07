
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci {int * vhci_hcd_ss; int * vhci_hcd_hs; } ;
struct usb_hcd {int has_tt; } ;
struct platform_device {int dev; int id; int name; } ;


 int ENOMEM ;
 scalar_t__ dev_get_platdata (int *) ;
 int dev_name (int *) ;
 int pr_err (char*,...) ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 struct usb_hcd* usb_create_hcd (int *,int *,int ) ;
 struct usb_hcd* usb_create_shared_hcd (int *,int *,int ,struct usb_hcd*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;
 int usbip_dbg_vhci_hc (char*,...) ;
 int vhci_hc_driver ;

__attribute__((used)) static int vhci_hcd_probe(struct platform_device *pdev)
{
 struct vhci *vhci = *((void **)dev_get_platdata(&pdev->dev));
 struct usb_hcd *hcd_hs;
 struct usb_hcd *hcd_ss;
 int ret;

 usbip_dbg_vhci_hc("name %s id %d\n", pdev->name, pdev->id);





 hcd_hs = usb_create_hcd(&vhci_hc_driver, &pdev->dev, dev_name(&pdev->dev));
 if (!hcd_hs) {
  pr_err("create primary hcd failed\n");
  return -ENOMEM;
 }
 hcd_hs->has_tt = 1;





 ret = usb_add_hcd(hcd_hs, 0, 0);
 if (ret != 0) {
  pr_err("usb_add_hcd hs failed %d\n", ret);
  goto put_usb2_hcd;
 }

 hcd_ss = usb_create_shared_hcd(&vhci_hc_driver, &pdev->dev,
           dev_name(&pdev->dev), hcd_hs);
 if (!hcd_ss) {
  ret = -ENOMEM;
  pr_err("create shared hcd failed\n");
  goto remove_usb2_hcd;
 }

 ret = usb_add_hcd(hcd_ss, 0, 0);
 if (ret) {
  pr_err("usb_add_hcd ss failed %d\n", ret);
  goto put_usb3_hcd;
 }

 usbip_dbg_vhci_hc("bye\n");
 return 0;

put_usb3_hcd:
 usb_put_hcd(hcd_ss);
remove_usb2_hcd:
 usb_remove_hcd(hcd_hs);
put_usb2_hcd:
 usb_put_hcd(hcd_hs);
 vhci->vhci_hcd_hs = ((void*)0);
 vhci->vhci_hcd_ss = ((void*)0);
 return ret;
}
