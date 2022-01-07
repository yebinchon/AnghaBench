
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgtport {struct nvmet_fc_port_entry* pe; } ;
struct nvmet_fc_port_entry {int * tgtport; } ;


 int nvmet_fc_tgtlock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nvmet_fc_portentry_unbind_tgt(struct nvmet_fc_tgtport *tgtport)
{
 struct nvmet_fc_port_entry *pe;
 unsigned long flags;

 spin_lock_irqsave(&nvmet_fc_tgtlock, flags);
 pe = tgtport->pe;
 if (pe)
  pe->tgtport = ((void*)0);
 tgtport->pe = ((void*)0);
 spin_unlock_irqrestore(&nvmet_fc_tgtlock, flags);
}
