
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_hrr_queue {int _lock; } ;
struct ipr_cmnd {struct ipr_hrr_queue* hrrq; } ;


 int __ipr_erp_request_sense (struct ipr_cmnd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipr_erp_request_sense(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_hrr_queue *hrrq = ipr_cmd->hrrq;
 unsigned long hrrq_flags;

 spin_lock_irqsave(&hrrq->_lock, hrrq_flags);
 __ipr_erp_request_sense(ipr_cmd);
 spin_unlock_irqrestore(&hrrq->_lock, hrrq_flags);
}
