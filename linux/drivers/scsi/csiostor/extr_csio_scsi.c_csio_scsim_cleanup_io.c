
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_scsim {int active_q; struct csio_hw* hw; } ;
struct csio_hw {int lock; } ;


 int CSIO_DB_ASSERT (scalar_t__) ;
 int CSIO_SCSI_ABORT_Q_POLL_MS ;
 int DIV_ROUND_UP (int,int ) ;
 int csio_dbg (struct csio_hw*,char*) ;
 int csio_scsi_abort_io_q (struct csio_scsim*,int *,int) ;
 int csio_scsi_cleanup_io_q (struct csio_scsim*,int *) ;
 scalar_t__ list_empty (int *) ;
 int msleep (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
csio_scsim_cleanup_io(struct csio_scsim *scm, bool abort)
{
 struct csio_hw *hw = scm->hw;
 int rv = 0;
 int count = DIV_ROUND_UP(60 * 1000, CSIO_SCSI_ABORT_Q_POLL_MS);


 if (list_empty(&scm->active_q))
  return 0;


 while (!list_empty(&scm->active_q) && count--) {
  spin_unlock_irq(&hw->lock);
  msleep(CSIO_SCSI_ABORT_Q_POLL_MS);
  spin_lock_irq(&hw->lock);
 }


 if (list_empty(&scm->active_q))
  return 0;


 if (abort) {
  rv = csio_scsi_abort_io_q(scm, &scm->active_q, 30000);
  if (rv == 0)
   return rv;
  csio_dbg(hw, "Some I/O aborts timed out, cleaning up..\n");
 }

 csio_scsi_cleanup_io_q(scm, &scm->active_q);

 CSIO_DB_ASSERT(list_empty(&scm->active_q));

 return rv;
}
