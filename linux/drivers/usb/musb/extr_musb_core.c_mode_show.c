
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct musb {int lock; TYPE_1__* xceiv; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {TYPE_2__* otg; } ;


 struct musb* dev_to_musb (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,char*) ;
 char* usb_otg_state_string (int ) ;

__attribute__((used)) static ssize_t
mode_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct musb *musb = dev_to_musb(dev);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&musb->lock, flags);
 ret = sprintf(buf, "%s\n", usb_otg_state_string(musb->xceiv->otg->state));
 spin_unlock_irqrestore(&musb->lock, flags);

 return ret;
}
