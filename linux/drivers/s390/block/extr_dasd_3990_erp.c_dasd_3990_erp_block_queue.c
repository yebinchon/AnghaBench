
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; } ;
struct dasd_ccw_req {scalar_t__ block; int status; struct dasd_device* startdev; } ;


 int DASD_CQR_FILLED ;
 int DASD_STOPPED_PENDING ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int) ;
 int DBF_INFO ;
 int HZ ;
 int dasd_block_set_timer (scalar_t__,int) ;
 int dasd_device_set_stop_bits (struct dasd_device*,int ) ;
 int dasd_device_set_timer (struct dasd_device*,int) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void dasd_3990_erp_block_queue(struct dasd_ccw_req *erp, int expires)
{

 struct dasd_device *device = erp->startdev;
 unsigned long flags;

 DBF_DEV_EVENT(DBF_INFO, device,
      "blocking request queue for %is", expires/HZ);

 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 dasd_device_set_stop_bits(device, DASD_STOPPED_PENDING);
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 erp->status = DASD_CQR_FILLED;
 if (erp->block)
  dasd_block_set_timer(erp->block, expires);
 else
  dasd_device_set_timer(device, expires);
}
