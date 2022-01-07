
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {unsigned long flags; int intrc; int memdev; } ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 int css_schedule_reprobe () ;
 struct dasd_ccw_req* dasd_eckd_build_psf_ssc (struct dasd_device*,int) ;
 int dasd_sfree_request (struct dasd_ccw_req*,int ) ;
 int dasd_sleep_on (struct dasd_ccw_req*) ;

__attribute__((used)) static int
dasd_eckd_psf_ssc(struct dasd_device *device, int enable_pav,
    unsigned long flags)
{
 struct dasd_ccw_req *cqr;
 int rc;

 cqr = dasd_eckd_build_psf_ssc(device, enable_pav);
 if (IS_ERR(cqr))
  return PTR_ERR(cqr);





 cqr->flags |= flags;

 rc = dasd_sleep_on(cqr);
 if (!rc)

  css_schedule_reprobe();
 else if (cqr->intrc == -EAGAIN)
  rc = -EAGAIN;

 dasd_sfree_request(cqr, cqr->memdev);
 return rc;
}
