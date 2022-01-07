
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_usb {int linkstat; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;



 int PAGE_SIZE ;
 struct twl6030_usb* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t vbus_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct twl6030_usb *twl = dev_get_drvdata(dev);
 unsigned long flags;
 int ret = -EINVAL;

 spin_lock_irqsave(&twl->lock, flags);

 switch (twl->linkstat) {
 case 128:
        ret = snprintf(buf, PAGE_SIZE, "vbus\n");
        break;
 case 130:
        ret = snprintf(buf, PAGE_SIZE, "id\n");
        break;
 case 129:
        ret = snprintf(buf, PAGE_SIZE, "none\n");
        break;
 default:
        ret = snprintf(buf, PAGE_SIZE, "UNKNOWN\n");
 }
 spin_unlock_irqrestore(&twl->lock, flags);

 return ret;
}
