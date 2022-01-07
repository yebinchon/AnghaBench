
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int memdev; } ;


 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_eckd_dso_ras (struct dasd_device*,int *,int *,int ,int ,int ) ;
 int dasd_sfree_request (struct dasd_ccw_req*,int ) ;
 int dasd_sleep_on_interruptible (struct dasd_ccw_req*) ;

__attribute__((used)) static int dasd_eckd_release_space_full(struct dasd_device *device)
{
 struct dasd_ccw_req *cqr;
 int rc;

 cqr = dasd_eckd_dso_ras(device, ((void*)0), ((void*)0), 0, 0, 0);
 if (IS_ERR(cqr))
  return PTR_ERR(cqr);

 rc = dasd_sleep_on_interruptible(cqr);

 dasd_sfree_request(cqr, cqr->memdev);

 return rc;
}
