
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xenbus_device {int dummy; } ;
struct TYPE_5__ {int register_work; } ;
struct sock_mapping {void* bytes; TYPE_3__* sock; int irq; scalar_t__ ring; TYPE_2__ ioworker; int release; int saved_data_ready; } ;
struct pvcalls_fedata {int dummy; } ;
struct TYPE_6__ {TYPE_1__* sk; } ;
struct TYPE_4__ {int sk_callback_lock; int sk_data_ready; int * sk_user_data; } ;


 int atomic_set (int *,int) ;
 int disable_irq (int ) ;
 int flush_work (int *) ;
 int kfree (struct sock_mapping*) ;
 int sock_release (TYPE_3__*) ;
 int unbind_from_irqhandler (int ,struct sock_mapping*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int xenbus_unmap_ring_vfree (struct xenbus_device*,void*) ;

__attribute__((used)) static int pvcalls_back_release_active(struct xenbus_device *dev,
           struct pvcalls_fedata *fedata,
           struct sock_mapping *map)
{
 disable_irq(map->irq);
 if (map->sock->sk != ((void*)0)) {
  write_lock_bh(&map->sock->sk->sk_callback_lock);
  map->sock->sk->sk_user_data = ((void*)0);
  map->sock->sk->sk_data_ready = map->saved_data_ready;
  write_unlock_bh(&map->sock->sk->sk_callback_lock);
 }

 atomic_set(&map->release, 1);
 flush_work(&map->ioworker.register_work);

 xenbus_unmap_ring_vfree(dev, map->bytes);
 xenbus_unmap_ring_vfree(dev, (void *)map->ring);
 unbind_from_irqhandler(map->irq, map);

 sock_release(map->sock);
 kfree(map);

 return 0;
}
