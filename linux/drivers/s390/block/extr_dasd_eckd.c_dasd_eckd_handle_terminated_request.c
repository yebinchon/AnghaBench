
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_ccw_req {scalar_t__ retries; scalar_t__ startdev; TYPE_1__* block; int lpm; int status; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int DASD_CQR_FAILED ;
 int DASD_CQR_FILLED ;
 int dasd_eckd_reset_ccw_to_base_io (struct dasd_ccw_req*) ;
 int dasd_path_get_opm (scalar_t__) ;

__attribute__((used)) static void dasd_eckd_handle_terminated_request(struct dasd_ccw_req *cqr)
{
 if (cqr->retries < 0) {
  cqr->status = DASD_CQR_FAILED;
  return;
 }
 cqr->status = DASD_CQR_FILLED;
 if (cqr->block && (cqr->startdev != cqr->block->base)) {
  dasd_eckd_reset_ccw_to_base_io(cqr);
  cqr->startdev = cqr->block->base;
  cqr->lpm = dasd_path_get_opm(cqr->block->base);
 }
}
