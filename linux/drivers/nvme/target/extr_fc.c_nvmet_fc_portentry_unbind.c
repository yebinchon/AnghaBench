
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_fc_port_entry {int pe_list; TYPE_1__* tgtport; } ;
struct TYPE_2__ {int * pe; } ;


 int list_del (int *) ;
 int nvmet_fc_tgtlock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nvmet_fc_portentry_unbind(struct nvmet_fc_port_entry *pe)
{
 unsigned long flags;

 spin_lock_irqsave(&nvmet_fc_tgtlock, flags);
 if (pe->tgtport)
  pe->tgtport->pe = ((void*)0);
 list_del(&pe->pe_list);
 spin_unlock_irqrestore(&nvmet_fc_tgtlock, flags);
}
