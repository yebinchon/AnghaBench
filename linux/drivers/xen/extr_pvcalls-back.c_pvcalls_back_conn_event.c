
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pvcalls_ioworker {int register_work; int wq; } ;
struct sock_mapping {int io; int write; struct pvcalls_ioworker ioworker; TYPE_2__* sock; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {struct sock_mapping* sk_user_data; } ;


 int IRQ_HANDLED ;
 int atomic_inc (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t pvcalls_back_conn_event(int irq, void *sock_map)
{
 struct sock_mapping *map = sock_map;
 struct pvcalls_ioworker *iow;

 if (map == ((void*)0) || map->sock == ((void*)0) || map->sock->sk == ((void*)0) ||
  map->sock->sk->sk_user_data != map)
  return IRQ_HANDLED;

 iow = &map->ioworker;

 atomic_inc(&map->write);
 atomic_inc(&map->io);
 queue_work(iow->wq, &iow->register_work);

 return IRQ_HANDLED;
}
