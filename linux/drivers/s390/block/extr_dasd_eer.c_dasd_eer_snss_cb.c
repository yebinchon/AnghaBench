
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; int flags; struct dasd_ccw_req* eer_cqr; } ;
struct dasd_ccw_req {struct dasd_device* startdev; } ;


 int DASD_EER_STATECHANGE ;
 int DASD_FLAG_EER_IN_USE ;
 int DASD_FLAG_EER_SNSS ;
 int clear_bit (int ,int *) ;
 int dasd_eer_snss (struct dasd_device*) ;
 int dasd_eer_write (struct dasd_device*,struct dasd_ccw_req*,int ) ;
 int dasd_sfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void dasd_eer_snss_cb(struct dasd_ccw_req *cqr, void *data)
{
 struct dasd_device *device = cqr->startdev;
 unsigned long flags;

 dasd_eer_write(device, cqr, DASD_EER_STATECHANGE);
 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 if (device->eer_cqr == cqr) {
  clear_bit(DASD_FLAG_EER_IN_USE, &device->flags);
  if (test_bit(DASD_FLAG_EER_SNSS, &device->flags))

   dasd_eer_snss(device);
  cqr = ((void*)0);
 }
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 if (cqr)







  dasd_sfree_request(cqr, device);
}
