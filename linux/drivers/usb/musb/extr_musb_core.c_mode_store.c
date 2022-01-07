
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 int MUSB_HOST ;
 int MUSB_OTG ;
 int MUSB_PERIPHERAL ;
 struct musb* dev_to_musb (struct device*) ;
 int musb_platform_set_mode (struct musb*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t
mode_store(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t n)
{
 struct musb *musb = dev_to_musb(dev);
 unsigned long flags;
 int status;

 spin_lock_irqsave(&musb->lock, flags);
 if (sysfs_streq(buf, "host"))
  status = musb_platform_set_mode(musb, MUSB_HOST);
 else if (sysfs_streq(buf, "peripheral"))
  status = musb_platform_set_mode(musb, MUSB_PERIPHERAL);
 else if (sysfs_streq(buf, "otg"))
  status = musb_platform_set_mode(musb, MUSB_OTG);
 else
  status = -EINVAL;
 spin_unlock_irqrestore(&musb->lock, flags);

 return (status == 0) ? n : status;
}
