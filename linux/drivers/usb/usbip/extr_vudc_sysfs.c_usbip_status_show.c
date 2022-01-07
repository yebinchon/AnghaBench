
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int lock; } ;
struct vudc {TYPE_1__ ud; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static ssize_t usbip_status_show(struct device *dev,
          struct device_attribute *attr, char *out)
{
 struct vudc *udc = (struct vudc *) dev_get_drvdata(dev);
 int status;

 if (!udc) {
  dev_err(dev, "no device");
  return -ENODEV;
 }
 spin_lock_irq(&udc->ud.lock);
 status = udc->ud.status;
 spin_unlock_irq(&udc->ud.lock);

 return snprintf(out, PAGE_SIZE, "%d\n", status);
}
