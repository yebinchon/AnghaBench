
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_scsim {int freelist_lock; } ;
struct csio_ioreq {int dummy; } ;
struct csio_hw {int dummy; } ;


 struct csio_ioreq* csio_get_scsi_ioreq (struct csio_scsim*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline struct csio_ioreq *
csio_get_scsi_ioreq_lock(struct csio_hw *hw, struct csio_scsim *scsim)
{
 struct csio_ioreq *ioreq;
 unsigned long flags;

 spin_lock_irqsave(&scsim->freelist_lock, flags);
 ioreq = csio_get_scsi_ioreq(scsim);
 spin_unlock_irqrestore(&scsim->freelist_lock, flags);

 return ioreq;
}
