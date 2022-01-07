
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {scalar_t__ status; unsigned long startclk; unsigned long stopclk; struct dasd_device* startdev; int memdev; int blocklist; struct dasd_ccw_req* refers; int * function; } ;


 int BUG_ON (int) ;
 scalar_t__ DASD_CQR_DONE ;
 scalar_t__ DASD_CQR_FAILED ;
 int dasd_free_erp_request (struct dasd_ccw_req*,int ) ;
 unsigned long get_tod_clock () ;
 int list_del (int *) ;

struct dasd_ccw_req *dasd_default_erp_postaction(struct dasd_ccw_req *cqr)
{
 int success;
 unsigned long startclk, stopclk;
 struct dasd_device *startdev;

 BUG_ON(cqr->refers == ((void*)0) || cqr->function == ((void*)0));

 success = cqr->status == DASD_CQR_DONE;
 startclk = cqr->startclk;
 stopclk = cqr->stopclk;
 startdev = cqr->startdev;


 while (cqr->refers != ((void*)0)) {
  struct dasd_ccw_req *refers;

  refers = cqr->refers;

  list_del(&cqr->blocklist);

  dasd_free_erp_request(cqr, cqr->memdev);
  cqr = refers;
 }


 cqr->startclk = startclk;
 cqr->stopclk = stopclk;
 cqr->startdev = startdev;
 if (success)
  cqr->status = DASD_CQR_DONE;
 else {
  cqr->status = DASD_CQR_FAILED;
  cqr->stopclk = get_tod_clock();
 }

 return cqr;

}
