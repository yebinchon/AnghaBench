
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {scalar_t__ status; scalar_t__ refers; int flags; } ;


 scalar_t__ DASD_CQR_DONE ;
 scalar_t__ DASD_CQR_FAILED ;
 scalar_t__ DASD_CQR_FILLED ;
 int DASD_CQR_FLAGS_USE_ERP ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int __dasd_sleep_on_loop_condition(struct dasd_ccw_req *cqr)
{
 if (test_bit(DASD_CQR_FLAGS_USE_ERP, &cqr->flags)) {
  if (cqr->refers)
   return 1;
  return ((cqr->status != DASD_CQR_DONE) &&
   (cqr->status != DASD_CQR_FAILED));
 } else
  return (cqr->status == DASD_CQR_FILLED);
}
