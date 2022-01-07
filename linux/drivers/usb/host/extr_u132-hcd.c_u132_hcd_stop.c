
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct u132 {int going; int sw_lock; TYPE_1__* platform_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,struct u132*,...) ;
 struct u132* hcd_to_u132 (struct usb_hcd*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int u132_power (struct u132*,int ) ;

__attribute__((used)) static void u132_hcd_stop(struct usb_hcd *hcd)
{
 struct u132 *u132 = hcd_to_u132(hcd);
 if (u132->going > 1) {
  dev_err(&u132->platform_dev->dev, "u132 device %p(hcd=%p) has b"
   "een removed %d\n", u132, hcd, u132->going);
 } else if (u132->going > 0) {
  dev_err(&u132->platform_dev->dev, "device hcd=%p is being remov"
   "ed\n", hcd);
 } else {
  mutex_lock(&u132->sw_lock);
  msleep(100);
  u132_power(u132, 0);
  mutex_unlock(&u132->sw_lock);
 }
}
