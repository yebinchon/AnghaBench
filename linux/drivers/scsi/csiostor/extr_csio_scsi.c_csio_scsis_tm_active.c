
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct csio_scsim {int dummy; } ;
struct TYPE_4__ {int sm_list; } ;
struct csio_ioreq {TYPE_2__ sm; int wr_status; int eq_idx; int drv_status; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
typedef enum csio_scsi_ev { ____Placeholder_csio_scsi_ev } csio_scsi_ev ;
struct TYPE_3__ {struct csio_hw* hwp; } ;


 int CSIO_DB_ASSERT (int ) ;
 int CSIO_DEC_STATS (struct csio_scsim*,int ) ;




 int FW_HOSTERROR ;
 int SCSI_ABORT ;
 int SCSI_CLOSE ;
 int csio_dbg (struct csio_hw*,char*,int,struct csio_ioreq*) ;
 struct csio_scsim* csio_hw_to_scsim (struct csio_hw*) ;
 int csio_scsi_abrt_cls (struct csio_ioreq*,int ) ;
 int csio_scsis_aborting ;
 int csio_scsis_closing ;
 int csio_scsis_uninit ;
 int csio_set_state (TYPE_2__*,int ) ;
 int csio_wr_issue (struct csio_hw*,int ,int) ;
 int list_del_init (int *) ;
 int n_tm_active ;

__attribute__((used)) static void
csio_scsis_tm_active(struct csio_ioreq *req, enum csio_scsi_ev evt)
{
 struct csio_hw *hw = req->lnode->hwp;
 struct csio_scsim *scm = csio_hw_to_scsim(hw);

 switch (evt) {
 case 129:
  CSIO_DEC_STATS(scm, n_tm_active);
  list_del_init(&req->sm.sm_list);
  csio_set_state(&req->sm, csio_scsis_uninit);

  break;

 case 131:
  csio_scsi_abrt_cls(req, SCSI_ABORT);
  if (req->drv_status == 0) {
   csio_wr_issue(hw, req->eq_idx, 0);
   csio_set_state(&req->sm, csio_scsis_aborting);
  }
  break;


 case 130:
  csio_scsi_abrt_cls(req, SCSI_CLOSE);
  if (req->drv_status == 0) {
   csio_wr_issue(hw, req->eq_idx, 0);
   csio_set_state(&req->sm, csio_scsis_closing);
  }
  break;

 case 128:
  req->wr_status = FW_HOSTERROR;
  CSIO_DEC_STATS(scm, n_tm_active);
  csio_set_state(&req->sm, csio_scsis_uninit);
  break;

 default:
  csio_dbg(hw, "Unhandled event:%d sent to req:%p\n", evt, req);
  CSIO_DB_ASSERT(0);
 }
}
