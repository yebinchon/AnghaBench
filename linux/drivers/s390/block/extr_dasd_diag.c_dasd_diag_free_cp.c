
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct dasd_ccw_req {int memdev; int status; } ;


 int DASD_CQR_DONE ;
 int dasd_sfree_request (struct dasd_ccw_req*,int ) ;

__attribute__((used)) static int
dasd_diag_free_cp(struct dasd_ccw_req *cqr, struct request *req)
{
 int status;

 status = cqr->status == DASD_CQR_DONE;
 dasd_sfree_request(cqr, cqr->memdev);
 return status;
}
