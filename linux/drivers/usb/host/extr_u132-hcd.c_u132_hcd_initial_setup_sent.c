
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct urb {int unlinked; } ;
struct u132_ring {int number; } ;
struct u132_endp {size_t usb_addr; int usb_endp; struct u132_ring* ring; scalar_t__ dequeueing; struct u132* u132; } ;
struct u132 {int going; int scheduler_lock; TYPE_2__* platform_dev; TYPE_1__* addr; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int address; } ;


 int EINTR ;
 int ENODEV ;
 int dev_err (int *,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int u132_hcd_forget_urb (struct u132*,struct u132_endp*,struct urb*,int) ;
 int u132_hcd_giveback_urb (struct u132*,struct u132_endp*,struct urb*,int) ;
 int u132_hcd_initial_input_recv ;
 int usb_ftdi_elan_edset_input (TYPE_2__*,int ,struct u132_endp*,struct urb*,int ,int ,int ,int ) ;

__attribute__((used)) static void u132_hcd_initial_setup_sent(void *data, struct urb *urb, u8 *buf,
 int len, int toggle_bits, int error_count, int condition_code,
 int repeat_number, int halted, int skipped, int actual, int non_null)
{
 struct u132_endp *endp = data;
 struct u132 *u132 = endp->u132;
 u8 address = u132->addr[endp->usb_addr].address;
 mutex_lock(&u132->scheduler_lock);
 if (u132->going > 1) {
  dev_err(&u132->platform_dev->dev, "device has been removed %d\n"
   , u132->going);
  mutex_unlock(&u132->scheduler_lock);
  u132_hcd_forget_urb(u132, endp, urb, -ENODEV);
  return;
 } else if (endp->dequeueing) {
  endp->dequeueing = 0;
  mutex_unlock(&u132->scheduler_lock);
  u132_hcd_giveback_urb(u132, endp, urb, -EINTR);
  return;
 } else if (u132->going > 0) {
  dev_err(&u132->platform_dev->dev, "device is being removed "
    "urb=%p\n", urb);
  mutex_unlock(&u132->scheduler_lock);
  u132_hcd_giveback_urb(u132, endp, urb, -ENODEV);
  return;
 } else if (!urb->unlinked) {
  int retval;
  struct u132_ring *ring = endp->ring;
  mutex_unlock(&u132->scheduler_lock);
  retval = usb_ftdi_elan_edset_input(u132->platform_dev,
   ring->number, endp, urb, address, endp->usb_endp, 0,
   u132_hcd_initial_input_recv);
  if (retval != 0)
   u132_hcd_giveback_urb(u132, endp, urb, retval);
  return;
 } else {
  dev_err(&u132->platform_dev->dev, "CALLBACK called urb=%p "
    "unlinked=%d\n", urb, urb->unlinked);
  mutex_unlock(&u132->scheduler_lock);
  u132_hcd_giveback_urb(u132, endp, urb, 0);
  return;
 }
}
