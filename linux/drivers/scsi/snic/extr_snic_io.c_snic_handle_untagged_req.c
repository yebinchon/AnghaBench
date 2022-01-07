
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_req_info {int list; } ;
struct snic {int spl_cmd_lock; int spl_cmd_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
snic_handle_untagged_req(struct snic *snic, struct snic_req_info *rqi)
{
 unsigned long flags;

 INIT_LIST_HEAD(&rqi->list);

 spin_lock_irqsave(&snic->spl_cmd_lock, flags);
 list_add_tail(&rqi->list, &snic->spl_cmd_list);
 spin_unlock_irqrestore(&snic->spl_cmd_lock, flags);
}
