
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_req_info {int list; } ;
struct snic {int spl_cmd_lock; int snic_lock; scalar_t__ in_remove; } ;


 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int snic_req_free (struct snic*,struct snic_req_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
snic_release_untagged_req(struct snic *snic, struct snic_req_info *rqi)
{
 unsigned long flags;

 spin_lock_irqsave(&snic->snic_lock, flags);
 if (snic->in_remove) {
  spin_unlock_irqrestore(&snic->snic_lock, flags);
  goto end;
 }
 spin_unlock_irqrestore(&snic->snic_lock, flags);

 spin_lock_irqsave(&snic->spl_cmd_lock, flags);
 if (list_empty(&rqi->list)) {
  spin_unlock_irqrestore(&snic->spl_cmd_lock, flags);
  goto end;
 }
 list_del_init(&rqi->list);
 spin_unlock_irqrestore(&snic->spl_cmd_lock, flags);
 snic_req_free(snic, rqi);

end:
 return;
}
