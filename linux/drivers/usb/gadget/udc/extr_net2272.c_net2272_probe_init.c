
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int max_speed; int * ops; } ;
struct net2272 {unsigned int irq; TYPE_1__ gadget; struct device* dev; int lock; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 struct net2272* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int USB_SPEED_HIGH ;
 int dev_dbg (struct device*,char*) ;
 int driver_name ;
 struct net2272* kzalloc (int,int ) ;
 int net2272_ops ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct net2272 *net2272_probe_init(struct device *dev, unsigned int irq)
{
 struct net2272 *ret;

 if (!irq) {
  dev_dbg(dev, "No IRQ!\n");
  return ERR_PTR(-ENODEV);
 }


 ret = kzalloc(sizeof(*ret), GFP_KERNEL);
 if (!ret)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&ret->lock);
 ret->irq = irq;
 ret->dev = dev;
 ret->gadget.ops = &net2272_ops;
 ret->gadget.max_speed = USB_SPEED_HIGH;


 ret->gadget.name = driver_name;

 return ret;
}
