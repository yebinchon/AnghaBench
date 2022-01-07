
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;


 int usbdev_remove (void*) ;

__attribute__((used)) static int usbdev_notify(struct notifier_block *self,
          unsigned long action, void *dev)
{
 switch (action) {
 case 129:
  break;
 case 128:
  usbdev_remove(dev);
  break;
 }
 return NOTIFY_OK;
}
