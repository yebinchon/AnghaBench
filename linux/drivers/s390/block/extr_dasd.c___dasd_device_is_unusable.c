
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int stopped; int flags; } ;
struct dasd_ccw_req {int flags; } ;


 int DASD_CQR_VERIFY_PATH ;
 int DASD_FLAG_OFFLINE ;
 int DASD_FLAG_SAFE_OFFLINE_RUNNING ;
 int DASD_STOPPED_DC_WAIT ;
 int DASD_STOPPED_NOSPC ;
 int DASD_UNRESUMED_PM ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int __dasd_device_is_unusable(struct dasd_device *device,
         struct dasd_ccw_req *cqr)
{
 int mask = ~(DASD_STOPPED_DC_WAIT | DASD_UNRESUMED_PM | DASD_STOPPED_NOSPC);

 if (test_bit(DASD_FLAG_OFFLINE, &device->flags) &&
     !test_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {




  return 1;
 }
 if (device->stopped) {
  if (device->stopped & mask) {

   return 1;
  }
  if (!test_bit(DASD_CQR_VERIFY_PATH, &cqr->flags)) {


   return 1;
  }

 }
 return 0;
}
