
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct csio_scsim {int dummy; } ;
struct TYPE_4__ {int sm_list; } ;
struct csio_ioreq {TYPE_2__ sm; int wr_status; int drv_status; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
typedef enum csio_scsi_ev { ____Placeholder_csio_scsi_ev } csio_scsi_ev ;
struct TYPE_3__ {struct csio_hw* hwp; } ;


 int CSIO_DB_ASSERT (int ) ;
 int CSIO_DEC_STATS (struct csio_scsim*,int ) ;
 int CSIO_INC_STATS (struct csio_scsim*,int ) ;





 int ECANCELED ;
 int FW_EINVAL ;
 int FW_HOSTERROR ;
 int FW_SCSI_ABORT_REQUESTED ;
 int FW_SUCCESS ;
 int csio_dbg (struct csio_hw*,char*,...) ;
 struct csio_scsim* csio_hw_to_scsim (struct csio_hw*) ;
 int csio_scsi_itnexus_loss_error (int ) ;
 int csio_scsis_uninit ;
 int csio_set_state (TYPE_2__*,int ) ;
 int csio_warn (struct csio_hw*,char*,struct csio_ioreq*) ;
 int list_del_init (int *) ;
 int n_abrt_dups ;
 int n_active ;

__attribute__((used)) static void
csio_scsis_aborting(struct csio_ioreq *req, enum csio_scsi_ev evt)
{
 struct csio_hw *hw = req->lnode->hwp;
 struct csio_scsim *scm = csio_hw_to_scsim(hw);

 switch (evt) {
 case 129:
  csio_dbg(hw,
    "ioreq %p recvd cmpltd (wr_status:%d) "
    "in aborting st\n", req, req->wr_status);
  req->drv_status = -ECANCELED;
  break;

 case 132:
  CSIO_INC_STATS(scm, n_abrt_dups);
  break;

 case 131:

  csio_dbg(hw, "abort of %p return status:0x%x drv_status:%x\n",
    req, req->wr_status, req->drv_status);




  if (req->drv_status != -ECANCELED) {
   csio_warn(hw,
      "Abort completed before original I/O,"
       " req:%p\n", req);
   CSIO_DB_ASSERT(0);
  }
  if ((req->wr_status == FW_SUCCESS) ||
      (req->wr_status == FW_EINVAL) ||
      csio_scsi_itnexus_loss_error(req->wr_status))
   req->wr_status = FW_SCSI_ABORT_REQUESTED;

  CSIO_DEC_STATS(scm, n_active);
  list_del_init(&req->sm.sm_list);
  csio_set_state(&req->sm, csio_scsis_uninit);
  break;

 case 128:
  req->wr_status = FW_HOSTERROR;
  CSIO_DEC_STATS(scm, n_active);
  csio_set_state(&req->sm, csio_scsis_uninit);
  break;

 case 130:







  break;

 default:
  csio_dbg(hw, "Unhandled event:%d sent to req:%p\n", evt, req);
  CSIO_DB_ASSERT(0);
 }
}
