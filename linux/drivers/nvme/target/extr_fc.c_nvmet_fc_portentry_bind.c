
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_port {struct nvmet_fc_port_entry* priv; } ;
struct TYPE_2__ {int port_name; int node_name; } ;
struct nvmet_fc_tgtport {TYPE_1__ fc_target_port; struct nvmet_fc_port_entry* pe; } ;
struct nvmet_fc_port_entry {int pe_list; int port_name; int node_name; struct nvmet_port* port; struct nvmet_fc_tgtport* tgtport; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int nvmet_fc_portentry_list ;
 int nvmet_fc_tgtlock ;

__attribute__((used)) static void
nvmet_fc_portentry_bind(struct nvmet_fc_tgtport *tgtport,
   struct nvmet_fc_port_entry *pe,
   struct nvmet_port *port)
{
 lockdep_assert_held(&nvmet_fc_tgtlock);

 pe->tgtport = tgtport;
 tgtport->pe = pe;

 pe->port = port;
 port->priv = pe;

 pe->node_name = tgtport->fc_target_port.node_name;
 pe->port_name = tgtport->fc_target_port.port_name;
 INIT_LIST_HEAD(&pe->pe_list);

 list_add_tail(&pe->pe_list, &nvmet_fc_portentry_list);
}
