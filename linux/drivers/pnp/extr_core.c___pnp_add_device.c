
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {TYPE_1__* protocol; int dev; int protocol_list; int global_list; int status; } ;
struct TYPE_2__ {int (* can_wakeup ) (struct pnp_dev*) ;int devices; } ;


 int PNP_READY ;
 int device_register (int *) ;
 int device_set_wakeup_capable (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnp_delist_device (struct pnp_dev*) ;
 int pnp_fixup_device (struct pnp_dev*) ;
 int pnp_global ;
 int pnp_lock ;
 int stub1 (struct pnp_dev*) ;

int __pnp_add_device(struct pnp_dev *dev)
{
 int ret;

 pnp_fixup_device(dev);
 dev->status = PNP_READY;

 mutex_lock(&pnp_lock);

 list_add_tail(&dev->global_list, &pnp_global);
 list_add_tail(&dev->protocol_list, &dev->protocol->devices);

 mutex_unlock(&pnp_lock);

 ret = device_register(&dev->dev);
 if (ret)
  pnp_delist_device(dev);
 else if (dev->protocol->can_wakeup)
  device_set_wakeup_capable(&dev->dev,
    dev->protocol->can_wakeup(dev));

 return ret;
}
