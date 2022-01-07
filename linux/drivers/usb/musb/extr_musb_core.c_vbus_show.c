
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct musb {unsigned long a_wait_bcon; int lock; int mregs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_VBUS ;
 int MUSB_DEVCTL_VBUS_SHIFT ;
 struct musb* dev_to_musb (struct device*) ;
 int musb_platform_get_vbus_status (struct musb*) ;
 int musb_readb (int ,int ) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t
vbus_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct musb *musb = dev_to_musb(dev);
 unsigned long flags;
 unsigned long val;
 int vbus;
 u8 devctl;

 pm_runtime_get_sync(dev);
 spin_lock_irqsave(&musb->lock, flags);
 val = musb->a_wait_bcon;
 vbus = musb_platform_get_vbus_status(musb);
 if (vbus < 0) {

  devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
  if ((devctl & MUSB_DEVCTL_VBUS)
    == (3 << MUSB_DEVCTL_VBUS_SHIFT))
   vbus = 1;
  else
   vbus = 0;
 }
 spin_unlock_irqrestore(&musb->lock, flags);
 pm_runtime_put_sync(dev);

 return sprintf(buf, "Vbus %s, timeout %lu msec\n",
   vbus ? "on" : "off", val);
}
