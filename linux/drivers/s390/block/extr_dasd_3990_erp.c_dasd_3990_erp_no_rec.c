
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {int flags; struct dasd_device* startdev; } ;
struct TYPE_2__ {int dev; } ;


 int DASD_CQR_FAILED ;
 int DASD_CQR_SUPPRESS_NRF ;
 struct dasd_ccw_req* dasd_3990_erp_cleanup (struct dasd_ccw_req*,int ) ;
 int dev_err (int *,char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_no_rec(struct dasd_ccw_req * default_erp, char *sense)
{

 struct dasd_device *device = default_erp->startdev;






 if (!test_bit(DASD_CQR_SUPPRESS_NRF, &default_erp->flags))
  dev_err(&device->cdev->dev,
   "The specified record was not found\n");

 return dasd_3990_erp_cleanup(default_erp, DASD_CQR_FAILED);

}
