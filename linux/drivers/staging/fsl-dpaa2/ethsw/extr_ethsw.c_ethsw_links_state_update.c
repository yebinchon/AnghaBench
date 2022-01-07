
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_ifs; } ;
struct ethsw_core {TYPE_2__** ports; TYPE_1__ sw_attr; } ;
struct TYPE_4__ {int netdev; } ;


 int port_carrier_state_sync (int ) ;

__attribute__((used)) static void ethsw_links_state_update(struct ethsw_core *ethsw)
{
 int i;

 for (i = 0; i < ethsw->sw_attr.num_ifs; i++)
  port_carrier_state_sync(ethsw->ports[i]->netdev);
}
