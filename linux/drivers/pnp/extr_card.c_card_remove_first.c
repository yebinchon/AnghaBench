
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {int card_link; int card; int driver; } ;
struct TYPE_2__ {int (* remove ) (struct pnp_dev*) ;} ;
struct pnp_card_driver {TYPE_1__ link; int (* remove ) (int ) ;} ;


 int card_remove (struct pnp_dev*) ;
 int kfree (int ) ;
 int stub1 (int ) ;
 struct pnp_card_driver* to_pnp_card_driver (int ) ;

__attribute__((used)) static void card_remove_first(struct pnp_dev *dev)
{
 struct pnp_card_driver *drv = to_pnp_card_driver(dev->driver);

 if (!dev->card || !drv)
  return;
 if (drv->remove)
  drv->remove(dev->card_link);
 drv->link.remove = &card_remove;
 kfree(dev->card_link);
 card_remove(dev);
}
