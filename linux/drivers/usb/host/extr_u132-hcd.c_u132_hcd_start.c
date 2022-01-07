
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct u132_platform_data {scalar_t__ vendor; scalar_t__ device; } ;
struct u132 {int going; TYPE_2__* platform_dev; int sw_lock; int flags; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int dev; } ;


 int ENODEV ;
 int ESHUTDOWN ;
 int OHCI_QUIRK_AMD756 ;
 int OHCI_QUIRK_ZFMICRO ;
 scalar_t__ PCI_VENDOR_ID_AMD ;
 scalar_t__ PCI_VENDOR_ID_COMPAQ ;
 scalar_t__ PCI_VENDOR_ID_OPTI ;
 int dev_err (int *,char*,...) ;
 scalar_t__ dev_get_platdata (int *) ;
 struct u132* hcd_to_u132 (struct usb_hcd*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct platform_device* to_platform_device (scalar_t__) ;
 int u132_disable (struct u132*) ;
 int u132_run (struct u132*) ;

__attribute__((used)) static int u132_hcd_start(struct usb_hcd *hcd)
{
 struct u132 *u132 = hcd_to_u132(hcd);
 if (u132->going > 1) {
  dev_err(&u132->platform_dev->dev, "device has been removed %d\n"
   , u132->going);
  return -ENODEV;
 } else if (u132->going > 0) {
  dev_err(&u132->platform_dev->dev, "device is being removed\n");
  return -ESHUTDOWN;
 } else if (hcd->self.controller) {
  int retval;
  struct platform_device *pdev =
   to_platform_device(hcd->self.controller);
  u16 vendor = ((struct u132_platform_data *)
   dev_get_platdata(&pdev->dev))->vendor;
  u16 device = ((struct u132_platform_data *)
   dev_get_platdata(&pdev->dev))->device;
  mutex_lock(&u132->sw_lock);
  msleep(10);
  if (vendor == PCI_VENDOR_ID_AMD && device == 0x740c) {
   u132->flags = OHCI_QUIRK_AMD756;
  } else if (vendor == PCI_VENDOR_ID_OPTI && device == 0xc861) {
   dev_err(&u132->platform_dev->dev, "WARNING: OPTi workar"
    "ounds unavailable\n");
  } else if (vendor == PCI_VENDOR_ID_COMPAQ && device == 0xa0f8)
   u132->flags |= OHCI_QUIRK_ZFMICRO;
  retval = u132_run(u132);
  if (retval) {
   u132_disable(u132);
   u132->going = 1;
  }
  msleep(100);
  mutex_unlock(&u132->sw_lock);
  return retval;
 } else {
  dev_err(&u132->platform_dev->dev, "platform_device missing\n");
  return -ENODEV;
 }
}
