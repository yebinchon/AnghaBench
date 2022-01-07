
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {scalar_t__ state; } ;
struct dasd_ccw_req {scalar_t__ status; int retries; } ;


 scalar_t__ DASD_CQR_CLEAR_PENDING ;
 scalar_t__ DASD_CQR_IN_IO ;
 scalar_t__ DASD_CQR_QUEUED ;
 int DASD_EER_NOSPC ;
 scalar_t__ DASD_STATE_BASIC ;
 int DASD_STOPPED_NOSPC ;
 int dasd_device_clear_timer (struct dasd_device*) ;
 int dasd_device_set_stop_bits (struct dasd_device*,int ) ;
 int dasd_eer_write (struct dasd_device*,int *,int ) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;

void dasd_generic_space_exhaust(struct dasd_device *device,
    struct dasd_ccw_req *cqr)
{
 dasd_eer_write(device, ((void*)0), DASD_EER_NOSPC);

 if (device->state < DASD_STATE_BASIC)
  return;

 if (cqr->status == DASD_CQR_IN_IO ||
     cqr->status == DASD_CQR_CLEAR_PENDING) {
  cqr->status = DASD_CQR_QUEUED;
  cqr->retries++;
 }
 dasd_device_set_stop_bits(device, DASD_STOPPED_NOSPC);
 dasd_device_clear_timer(device);
 dasd_schedule_device_bh(device);
}
