
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_ioreq {TYPE_1__* lnode; int sm; int drv_status; } ;
typedef enum csio_scsi_ev { ____Placeholder_csio_scsi_ev } csio_scsi_ev ;
struct TYPE_2__ {int hwp; } ;


 int CSIO_DB_ASSERT (int ) ;



 int csio_dbg (int ,char*,int,struct csio_ioreq*) ;
 int csio_scsis_uninit ;
 int csio_set_state (int *,int ) ;

__attribute__((used)) static void
csio_scsis_shost_cmpl_await(struct csio_ioreq *req, enum csio_scsi_ev evt)
{
 switch (evt) {
 case 130:
 case 129:
  req->drv_status = 0;
  break;
 case 128:
  csio_set_state(&req->sm, csio_scsis_uninit);
  break;
 default:
  csio_dbg(req->lnode->hwp, "Unhandled event:%d sent to req:%p\n",
    evt, req);
  CSIO_DB_ASSERT(0);
 }
}
