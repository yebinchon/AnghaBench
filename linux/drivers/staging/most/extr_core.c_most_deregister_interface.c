
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct most_interface {int num_channels; int dev; struct most_channel* p; int description; } ;
struct TYPE_8__ {TYPE_3__* comp; } ;
struct TYPE_6__ {TYPE_1__* comp; } ;
struct most_channel {int dev_id; int dev; int list; TYPE_4__ pipe1; TYPE_2__ pipe0; int channel_id; int iface; struct most_channel** channel; } ;
struct TYPE_7__ {int (* disconnect_channel ) (int ,int ) ;} ;
struct TYPE_5__ {int (* disconnect_channel ) (int ,int ) ;} ;


 int dev_name (int *) ;
 int device_unregister (int *) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct most_channel*) ;
 int list_del (int *) ;
 int mdev_id ;
 int pr_info (char*,int ,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

void most_deregister_interface(struct most_interface *iface)
{
 int i;
 struct most_channel *c;

 pr_info("deregistering device %s (%s)\n", dev_name(&iface->dev),
  iface->description);
 for (i = 0; i < iface->num_channels; i++) {
  c = iface->p->channel[i];
  if (c->pipe0.comp)
   c->pipe0.comp->disconnect_channel(c->iface,
       c->channel_id);
  if (c->pipe1.comp)
   c->pipe1.comp->disconnect_channel(c->iface,
       c->channel_id);
  c->pipe0.comp = ((void*)0);
  c->pipe1.comp = ((void*)0);
  list_del(&c->list);
  device_unregister(&c->dev);
  kfree(c);
 }

 ida_simple_remove(&mdev_id, iface->p->dev_id);
 kfree(iface->p);
 device_unregister(&iface->dev);
}
