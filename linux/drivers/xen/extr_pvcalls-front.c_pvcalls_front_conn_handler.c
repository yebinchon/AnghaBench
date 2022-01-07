
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inflight_conn_req; } ;
struct sock_mapping {TYPE_1__ active; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t pvcalls_front_conn_handler(int irq, void *sock_map)
{
 struct sock_mapping *map = sock_map;

 if (map == ((void*)0))
  return IRQ_HANDLED;

 wake_up_interruptible(&map->active.inflight_conn_req);

 return IRQ_HANDLED;
}
