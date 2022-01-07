
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dev; } ;


 int device_unregister (int *) ;
 int pnp_delist_device (struct pnp_dev*) ;

void __pnp_remove_device(struct pnp_dev *dev)
{
 pnp_delist_device(dev);
 device_unregister(&dev->dev);
}
