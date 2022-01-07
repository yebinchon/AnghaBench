
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {int ports_max; int set_gtk; int set_ptk; int set_num_dnts; int bwa_set; int dev_info_set; int mmcie_rm; int mmcie_add; int stop; int start; int mmcies_max; int * uwb_rc; struct device* dev; } ;
struct wahc {struct wusbhc* wusb; TYPE_1__* wa_descr; int usb_iface; int usb_dev; } ;
struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct usb_device {int dummy; } ;
struct hwahc {struct wusbhc wusbhc; struct wahc wa; } ;
typedef int kernel_ulong_t ;
struct TYPE_2__ {scalar_t__ bNumPorts; int bNumMMCIEs; } ;


 scalar_t__ USB_MAXCHILDREN ;
 int __hwahc_op_bwa_set ;
 int __hwahc_op_dev_info_set ;
 int __hwahc_op_mmcie_add ;
 int __hwahc_op_mmcie_rm ;
 int __hwahc_op_set_gtk ;
 int __hwahc_op_set_num_dnts ;
 int __hwahc_op_set_ptk ;
 int __hwahc_op_wusbhc_start ;
 int __hwahc_op_wusbhc_stop ;
 int dev_err (struct device*,char*,int) ;
 int hwahc_security_create (struct hwahc*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_put_intf (struct usb_interface*) ;
 int wa_create (struct wahc*,struct usb_interface*,int ) ;
 int wa_fill_descr (struct wahc*) ;
 int wusbhc_create (struct wusbhc*) ;
 int wusbhc_destroy (struct wusbhc*) ;

__attribute__((used)) static int hwahc_create(struct hwahc *hwahc, struct usb_interface *iface,
 kernel_ulong_t quirks)
{
 int result;
 struct device *dev = &iface->dev;
 struct wusbhc *wusbhc = &hwahc->wusbhc;
 struct wahc *wa = &hwahc->wa;
 struct usb_device *usb_dev = interface_to_usbdev(iface);

 wa->usb_dev = usb_get_dev(usb_dev);
 wa->usb_iface = usb_get_intf(iface);
 wusbhc->dev = dev;


 wusbhc->uwb_rc = ((void*)0);
 result = wa_fill_descr(wa);
 if (result < 0)
  goto error_fill_descriptor;
 if (wa->wa_descr->bNumPorts > USB_MAXCHILDREN) {
  dev_err(dev, "FIXME: USB_MAXCHILDREN too low for WUSB "
   "adapter (%u ports)\n", wa->wa_descr->bNumPorts);
  wusbhc->ports_max = USB_MAXCHILDREN;
 } else {
  wusbhc->ports_max = wa->wa_descr->bNumPorts;
 }
 wusbhc->mmcies_max = wa->wa_descr->bNumMMCIEs;
 wusbhc->start = __hwahc_op_wusbhc_start;
 wusbhc->stop = __hwahc_op_wusbhc_stop;
 wusbhc->mmcie_add = __hwahc_op_mmcie_add;
 wusbhc->mmcie_rm = __hwahc_op_mmcie_rm;
 wusbhc->dev_info_set = __hwahc_op_dev_info_set;
 wusbhc->bwa_set = __hwahc_op_bwa_set;
 wusbhc->set_num_dnts = __hwahc_op_set_num_dnts;
 wusbhc->set_ptk = __hwahc_op_set_ptk;
 wusbhc->set_gtk = __hwahc_op_set_gtk;
 result = hwahc_security_create(hwahc);
 if (result < 0) {
  dev_err(dev, "Can't initialize security: %d\n", result);
  goto error_security_create;
 }
 wa->wusb = wusbhc;
 result = wusbhc_create(&hwahc->wusbhc);
 if (result < 0) {
  dev_err(dev, "Can't create WUSB HC structures: %d\n", result);
  goto error_wusbhc_create;
 }
 result = wa_create(&hwahc->wa, iface, quirks);
 if (result < 0)
  goto error_wa_create;
 return 0;

error_wa_create:
 wusbhc_destroy(&hwahc->wusbhc);
error_wusbhc_create:

error_security_create:
error_fill_descriptor:
 usb_put_intf(iface);
 usb_put_dev(usb_dev);
 return result;
}
