
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct pvcalls_data_intf* ring; } ;
struct sock_mapping {TYPE_1__ active; } ;
struct pvcalls_data_intf {scalar_t__ out_prod; scalar_t__ out_cons; int out_error; } ;
typedef int int32_t ;
typedef scalar_t__ RING_IDX ;


 int ENOTCONN ;
 int PVCALLS_RING_ORDER ;
 scalar_t__ XEN_FLEX_RING_SIZE (int ) ;
 scalar_t__ pvcalls_queued (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool pvcalls_front_write_todo(struct sock_mapping *map)
{
 struct pvcalls_data_intf *intf = map->active.ring;
 RING_IDX cons, prod, size = XEN_FLEX_RING_SIZE(PVCALLS_RING_ORDER);
 int32_t error;

 error = intf->out_error;
 if (error == -ENOTCONN)
  return 0;
 if (error != 0)
  return 1;

 cons = intf->out_cons;
 prod = intf->out_prod;
 return !!(size - pvcalls_queued(prod, cons, size));
}
