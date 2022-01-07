
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {scalar_t__ retries; int status; } ;


 int DASD_CQR_FAILED ;
 int DASD_CQR_FILLED ;

__attribute__((used)) static void dasd_diag_handle_terminated_request(struct dasd_ccw_req *cqr)
{
 if (cqr->retries < 0)
  cqr->status = DASD_CQR_FAILED;
 else
  cqr->status = DASD_CQR_FILLED;
}
