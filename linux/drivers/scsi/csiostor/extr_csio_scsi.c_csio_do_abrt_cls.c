
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_scsi_qset {int eq_idx; } ;
struct csio_lnode {size_t portid; } ;
struct csio_ioreq {int eq_idx; int tmo; struct csio_lnode* lnode; } ;
struct csio_hw {struct csio_scsi_qset** sqset; } ;


 int CSIO_SCSI_ABRT_TMO_MS ;
 int SCSI_ABORT ;
 int csio_scsi_abort (struct csio_ioreq*) ;
 int csio_scsi_close (struct csio_ioreq*) ;
 int smp_processor_id () ;

__attribute__((used)) static int
csio_do_abrt_cls(struct csio_hw *hw, struct csio_ioreq *ioreq, bool abort)
{
 int rv;
 int cpu = smp_processor_id();
 struct csio_lnode *ln = ioreq->lnode;
 struct csio_scsi_qset *sqset = &hw->sqset[ln->portid][cpu];

 ioreq->tmo = CSIO_SCSI_ABRT_TMO_MS;






 ioreq->eq_idx = sqset->eq_idx;

 if (abort == SCSI_ABORT)
  rv = csio_scsi_abort(ioreq);
 else
  rv = csio_scsi_close(ioreq);

 return rv;
}
