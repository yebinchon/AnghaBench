
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgtport {int dummy; } ;
struct nvmet_fc_target_port {int dummy; } ;


 int __nvmet_fc_free_assocs (struct nvmet_fc_tgtport*) ;
 int nvmet_fc_portentry_unbind_tgt (struct nvmet_fc_tgtport*) ;
 int nvmet_fc_tgtport_put (struct nvmet_fc_tgtport*) ;
 struct nvmet_fc_tgtport* targetport_to_tgtport (struct nvmet_fc_target_port*) ;

int
nvmet_fc_unregister_targetport(struct nvmet_fc_target_port *target_port)
{
 struct nvmet_fc_tgtport *tgtport = targetport_to_tgtport(target_port);

 nvmet_fc_portentry_unbind_tgt(tgtport);


 __nvmet_fc_free_assocs(tgtport);

 nvmet_fc_tgtport_put(tgtport);

 return 0;
}
