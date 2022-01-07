
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct urb {int unlinked; } ;
struct u132_endp {scalar_t__ dequeueing; struct u132* u132; } ;
struct u132 {int going; int scheduler_lock; TYPE_1__* platform_dev; } ;
struct TYPE_2__ {int dev; } ;


 int EINTR ;
 int ENODEV ;
 int dev_err (int *,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int u132_hcd_forget_urb (struct u132*,struct u132_endp*,struct urb*,int ) ;
 int u132_hcd_giveback_urb (struct u132*,struct u132_endp*,struct urb*,int ) ;

__attribute__((used)) static void u132_hcd_configure_empty_recv(void *data, struct urb *urb, u8 *buf,
 int len, int toggle_bits, int error_count, int condition_code,
 int repeat_number, int halted, int skipped, int actual, int non_null)
{
 struct u132_endp *endp = data;
 struct u132 *u132 = endp->u132;
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
  mutex_unlock(&u132->scheduler_lock);
  u132_hcd_giveback_urb(u132, endp, urb, 0);
  return;
 } else {
  dev_err(&u132->platform_dev->dev, "CALLBACK called urb=%p "
    "unlinked=%d\n", urb, urb->unlinked);
  mutex_unlock(&u132->scheduler_lock);
  u132_hcd_giveback_urb(u132, endp, urb, 0);
  return;
 }
}
