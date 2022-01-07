
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_port {struct nvmet_fc_port_entry* priv; } ;
struct nvmet_fc_tgtport {int fc_target_port; TYPE_1__* ops; } ;
struct nvmet_fc_port_entry {struct nvmet_fc_tgtport* tgtport; } ;
struct TYPE_2__ {int (* discovery_event ) (int *) ;} ;


 int stub1 (int *) ;

__attribute__((used)) static void
nvmet_fc_discovery_chg(struct nvmet_port *port)
{
 struct nvmet_fc_port_entry *pe = port->priv;
 struct nvmet_fc_tgtport *tgtport = pe->tgtport;

 if (tgtport && tgtport->ops->discovery_event)
  tgtport->ops->discovery_event(&tgtport->fc_target_port);
}
