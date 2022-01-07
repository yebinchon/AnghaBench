
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgtport {int lock; int ls_list; } ;
struct nvmet_fc_ls_iod {int ls_list; } ;


 int list_move (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nvmet_fc_free_ls_iod(struct nvmet_fc_tgtport *tgtport,
   struct nvmet_fc_ls_iod *iod)
{
 unsigned long flags;

 spin_lock_irqsave(&tgtport->lock, flags);
 list_move(&iod->ls_list, &tgtport->ls_list);
 spin_unlock_irqrestore(&tgtport->lock, flags);
}
