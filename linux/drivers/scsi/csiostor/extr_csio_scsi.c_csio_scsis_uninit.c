
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct csio_scsim {int active_q; } ;
struct TYPE_4__ {int sm_list; } ;
struct csio_ioreq {int drv_status; int eq_idx; TYPE_2__ sm; int dcopy; int datadir; int nsge; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
typedef enum csio_scsi_ev { ____Placeholder_csio_scsi_ev } csio_scsi_ev ;
struct TYPE_3__ {struct csio_hw* hwp; } ;


 int CSIO_DB_ASSERT (int ) ;
 int CSIO_INC_STATS (struct csio_scsim*,int ) ;




 int DMA_TO_DEVICE ;
 int EINVAL ;
 int csio_dbg (struct csio_hw*,char*,int,struct csio_ioreq*) ;
 struct csio_scsim* csio_hw_to_scsim (struct csio_hw*) ;
 int csio_scsi_cmd (struct csio_ioreq*) ;
 int csio_scsi_write (struct csio_ioreq*) ;
 int csio_scsis_io_active ;
 int csio_scsis_tm_active ;
 int csio_set_state (TYPE_2__*,int ) ;
 int csio_setup_ddp (struct csio_scsim*,struct csio_ioreq*) ;
 int csio_warn (struct csio_hw*,char*,struct csio_ioreq*) ;
 int csio_wr_issue (struct csio_hw*,int ,int) ;
 int likely (int) ;
 int list_add_tail (int *,int *) ;
 int n_active ;
 int n_tm_active ;

__attribute__((used)) static void
csio_scsis_uninit(struct csio_ioreq *req, enum csio_scsi_ev evt)
{
 struct csio_hw *hw = req->lnode->hwp;
 struct csio_scsim *scsim = csio_hw_to_scsim(hw);

 switch (evt) {
 case 129:

  if (req->nsge) {
   if (req->datadir == DMA_TO_DEVICE) {
    req->dcopy = 0;
    csio_scsi_write(req);
   } else
    csio_setup_ddp(scsim, req);
  } else {
   csio_scsi_cmd(req);
  }

  if (likely(req->drv_status == 0)) {

   csio_set_state(&req->sm, csio_scsis_io_active);
   list_add_tail(&req->sm.sm_list, &scsim->active_q);
   csio_wr_issue(hw, req->eq_idx, 0);
   CSIO_INC_STATS(scsim, n_active);

   return;
  }
  break;

 case 128:
  csio_scsi_cmd(req);
  if (req->drv_status == 0) {
   csio_set_state(&req->sm, csio_scsis_tm_active);
   list_add_tail(&req->sm.sm_list, &scsim->active_q);
   csio_wr_issue(hw, req->eq_idx, 0);
   CSIO_INC_STATS(scsim, n_tm_active);
  }
  return;

 case 131:
 case 130:
  req->drv_status = -EINVAL;
  csio_warn(hw, "Trying to abort/close completed IO:%p!\n", req);
  break;

 default:
  csio_dbg(hw, "Unhandled event:%d sent to req:%p\n", evt, req);
  CSIO_DB_ASSERT(0);
 }
}
