
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {int status; int callback_data; int (* callback ) (struct dasd_ccw_req*,int ) ;} ;
struct TYPE_2__ {int dev; } ;


 int BUG () ;

 int DASD_CQR_DONE ;

 int DASD_CQR_NEED_ERP ;

 int DASD_CQR_TERMINATED ;
 int ERRORLENGTH ;
 int dev_err (int *,char*,char*) ;
 int snprintf (char*,int,char*,struct dasd_ccw_req*,int) ;
 int stub1 (struct dasd_ccw_req*,int ) ;

__attribute__((used)) static void __dasd_process_cqr(struct dasd_device *device,
          struct dasd_ccw_req *cqr)
{
 char errorstring[ERRORLENGTH];

 switch (cqr->status) {
 case 128:
  cqr->status = DASD_CQR_DONE;
  break;
 case 129:
  cqr->status = DASD_CQR_NEED_ERP;
  break;
 case 130:
  cqr->status = DASD_CQR_TERMINATED;
  break;
 default:

  snprintf(errorstring, ERRORLENGTH, "12 %p %x02", cqr, cqr->status);
  dev_err(&device->cdev->dev,
   "An error occurred in the DASD device driver, "
   "reason=%s\n", errorstring);
  BUG();
 }
 if (cqr->callback)
  cqr->callback(cqr, cqr->callback_data);
}
