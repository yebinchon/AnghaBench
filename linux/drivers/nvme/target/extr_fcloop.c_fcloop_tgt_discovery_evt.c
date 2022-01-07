
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_target_port {int private; } ;
struct fcloop_rscn {int work; int tport; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int fcloop_tgt_rscn_work ;
 struct fcloop_rscn* kzalloc (int,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
fcloop_tgt_discovery_evt(struct nvmet_fc_target_port *tgtport)
{
 struct fcloop_rscn *tgt_rscn;

 tgt_rscn = kzalloc(sizeof(*tgt_rscn), GFP_KERNEL);
 if (!tgt_rscn)
  return;

 tgt_rscn->tport = tgtport->private;
 INIT_WORK(&tgt_rscn->work, fcloop_tgt_rscn_work);

 schedule_work(&tgt_rscn->work);
}
