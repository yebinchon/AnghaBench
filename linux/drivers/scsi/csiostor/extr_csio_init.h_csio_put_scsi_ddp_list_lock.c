
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct csio_scsim {int dummy; } ;
struct csio_hw {int lock; } ;


 int csio_put_scsi_ddp_list (struct csio_scsim*,struct list_head*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
csio_put_scsi_ddp_list_lock(struct csio_hw *hw, struct csio_scsim *scsim,
         struct list_head *reqlist, int n)
{
 unsigned long flags;

 spin_lock_irqsave(&hw->lock, flags);
 csio_put_scsi_ddp_list(scsim, reqlist, n);
 spin_unlock_irqrestore(&hw->lock, flags);
}
