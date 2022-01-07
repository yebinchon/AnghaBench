
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* vha; int port_name; } ;
typedef TYPE_2__ fc_port_t ;
struct TYPE_4__ {int port_name; } ;


 scalar_t__ wwn_to_u64 (int ) ;

__attribute__((used)) static inline bool
fcport_is_smaller(fc_port_t *fcport)
{
 if (wwn_to_u64(fcport->port_name) <
     wwn_to_u64(fcport->vha->port_name))
  return 1;
 else
  return 0;
}
