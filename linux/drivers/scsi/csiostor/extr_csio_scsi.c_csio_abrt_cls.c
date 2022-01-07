
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct csio_scsim {int dummy; } ;
struct csio_lnode {struct csio_hw* hwp; } ;
struct csio_ioreq {struct csio_lnode* lnode; } ;
struct csio_hw {int dummy; } ;


 int CSIO_INC_STATS (struct csio_scsim*,int ) ;
 int SCSI_ABORT ;
 int SCSI_CLOSE ;
 int csio_do_abrt_cls (struct csio_hw*,struct csio_ioreq*,int ) ;
 struct csio_scsim* csio_hw_to_scsim (struct csio_hw*) ;
 int csio_is_lnode_ready (struct csio_lnode*) ;
 struct scsi_cmnd* csio_scsi_cmnd (struct csio_ioreq*) ;
 int n_abrt_busy_error ;
 int n_abrt_race_comp ;
 int n_cls_busy_error ;

__attribute__((used)) static void
csio_abrt_cls(struct csio_ioreq *ioreq, struct scsi_cmnd *scmnd)
{
 struct csio_lnode *ln = ioreq->lnode;
 struct csio_hw *hw = ln->hwp;
 int ready = 0;
 struct csio_scsim *scsim = csio_hw_to_scsim(hw);
 int rv;

 if (csio_scsi_cmnd(ioreq) != scmnd) {
  CSIO_INC_STATS(scsim, n_abrt_race_comp);
  return;
 }

 ready = csio_is_lnode_ready(ln);

 rv = csio_do_abrt_cls(hw, ioreq, (ready ? SCSI_ABORT : SCSI_CLOSE));
 if (rv != 0) {
  if (ready)
   CSIO_INC_STATS(scsim, n_abrt_busy_error);
  else
   CSIO_INC_STATS(scsim, n_cls_busy_error);
 }
}
