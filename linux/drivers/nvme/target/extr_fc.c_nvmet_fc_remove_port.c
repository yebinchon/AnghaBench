
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_port {struct nvmet_fc_port_entry* priv; } ;
struct nvmet_fc_port_entry {int dummy; } ;


 int kfree (struct nvmet_fc_port_entry*) ;
 int nvmet_fc_portentry_unbind (struct nvmet_fc_port_entry*) ;

__attribute__((used)) static void
nvmet_fc_remove_port(struct nvmet_port *port)
{
 struct nvmet_fc_port_entry *pe = port->priv;

 nvmet_fc_portentry_unbind(pe);

 kfree(pe);
}
