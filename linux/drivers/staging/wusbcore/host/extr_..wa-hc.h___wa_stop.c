
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wahc {TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENODEV ;
 int WA_ENABLE ;
 int __wa_clear_feature (struct wahc*,int ) ;
 int __wa_wait_status (struct wahc*,int ,int ) ;
 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static inline int __wa_stop(struct wahc *wa)
{
 int result;
 struct device *dev = &wa->usb_iface->dev;

 result = __wa_clear_feature(wa, WA_ENABLE);
 if (result < 0 && result != -ENODEV) {
  dev_err(dev, "error commanding HC to stop: %d\n", result);
  goto out;
 }
 result = __wa_wait_status(wa, WA_ENABLE, 0);
 if (result < 0 && result != -ENODEV)
  dev_err(dev, "error waiting for HC to stop: %d\n", result);
out:
 return 0;
}
