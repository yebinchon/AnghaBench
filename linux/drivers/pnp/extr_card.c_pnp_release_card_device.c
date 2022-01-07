
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnp_dev {int dev; TYPE_1__* card_link; } ;
struct TYPE_4__ {int * remove; } ;
struct pnp_card_driver {TYPE_2__ link; } ;
struct TYPE_3__ {struct pnp_card_driver* driver; } ;


 int card_remove ;
 int card_remove_first ;
 int device_release_driver (int *) ;

void pnp_release_card_device(struct pnp_dev *dev)
{
 struct pnp_card_driver *drv = dev->card_link->driver;

 drv->link.remove = &card_remove;
 device_release_driver(&dev->dev);
 drv->link.remove = &card_remove_first;
}
