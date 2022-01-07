
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct pvcalls_data_intf* ring; } ;
struct sock_mapping {TYPE_1__ active; } ;
struct pvcalls_data_intf {scalar_t__ in_error; int in_prod; int in_cons; } ;
typedef scalar_t__ int32_t ;
typedef int RING_IDX ;


 int PVCALLS_RING_ORDER ;
 int XEN_FLEX_RING_SIZE (int ) ;
 scalar_t__ pvcalls_queued (int ,int ,int ) ;

__attribute__((used)) static bool pvcalls_front_read_todo(struct sock_mapping *map)
{
 struct pvcalls_data_intf *intf = map->active.ring;
 RING_IDX cons, prod;
 int32_t error;

 cons = intf->in_cons;
 prod = intf->in_prod;
 error = intf->in_error;
 return (error != 0 ||
  pvcalls_queued(prod, cons,
          XEN_FLEX_RING_SIZE(PVCALLS_RING_ORDER)) != 0);
}
