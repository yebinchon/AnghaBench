
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct usb_device* root_hub; struct device* controller; } ;
struct usb_hcd {int rh_registered; TYPE_1__ self; } ;
struct TYPE_12__ {int bcdUSB; } ;
struct TYPE_10__ {int wMaxPacketSize; } ;
struct TYPE_11__ {TYPE_4__ desc; } ;
struct usb_device {int devnum; scalar_t__ speed; int dev; int lpm_capable; TYPE_6__ descriptor; TYPE_5__ ep0; TYPE_3__* bus; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int devicemap; } ;
struct TYPE_9__ {int devnum_next; TYPE_2__ devmap; } ;


 int EMSGSIZE ;
 scalar_t__ HCD_DEAD (struct usb_hcd*) ;
 int USB_DT_DEVICE_SIZE ;
 scalar_t__ USB_SPEED_SUPER ;
 int USB_STATE_ADDRESS ;
 int cpu_to_le16 (int) ;
 int dev_dbg (struct device*,char*,int ,int) ;
 int dev_err (struct device*,char*,int ,int) ;
 int dev_name (int *) ;
 int hcd_root_hub_lock ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int const,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_bus_idr_lock ;
 int usb_device_supports_lpm (struct usb_device*) ;
 int usb_get_bos_descriptor (struct usb_device*) ;
 int usb_get_device_descriptor (struct usb_device*,int ) ;
 int usb_hc_died (struct usb_hcd*) ;
 int usb_new_device (struct usb_device*) ;
 int usb_set_device_state (struct usb_device*,int ) ;

__attribute__((used)) static int register_root_hub(struct usb_hcd *hcd)
{
 struct device *parent_dev = hcd->self.controller;
 struct usb_device *usb_dev = hcd->self.root_hub;
 const int devnum = 1;
 int retval;

 usb_dev->devnum = devnum;
 usb_dev->bus->devnum_next = devnum + 1;
 set_bit (devnum, usb_dev->bus->devmap.devicemap);
 usb_set_device_state(usb_dev, USB_STATE_ADDRESS);

 mutex_lock(&usb_bus_idr_lock);

 usb_dev->ep0.desc.wMaxPacketSize = cpu_to_le16(64);
 retval = usb_get_device_descriptor(usb_dev, USB_DT_DEVICE_SIZE);
 if (retval != sizeof usb_dev->descriptor) {
  mutex_unlock(&usb_bus_idr_lock);
  dev_dbg (parent_dev, "can't read %s device descriptor %d\n",
    dev_name(&usb_dev->dev), retval);
  return (retval < 0) ? retval : -EMSGSIZE;
 }

 if (le16_to_cpu(usb_dev->descriptor.bcdUSB) >= 0x0201) {
  retval = usb_get_bos_descriptor(usb_dev);
  if (!retval) {
   usb_dev->lpm_capable = usb_device_supports_lpm(usb_dev);
  } else if (usb_dev->speed >= USB_SPEED_SUPER) {
   mutex_unlock(&usb_bus_idr_lock);
   dev_dbg(parent_dev, "can't read %s bos descriptor %d\n",
     dev_name(&usb_dev->dev), retval);
   return retval;
  }
 }

 retval = usb_new_device (usb_dev);
 if (retval) {
  dev_err (parent_dev, "can't register root hub for %s, %d\n",
    dev_name(&usb_dev->dev), retval);
 } else {
  spin_lock_irq (&hcd_root_hub_lock);
  hcd->rh_registered = 1;
  spin_unlock_irq (&hcd_root_hub_lock);


  if (HCD_DEAD(hcd))
   usb_hc_died (hcd);
 }
 mutex_unlock(&usb_bus_idr_lock);

 return retval;
}
