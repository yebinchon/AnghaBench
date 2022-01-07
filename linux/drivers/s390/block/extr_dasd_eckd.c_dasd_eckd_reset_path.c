
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_eckd_private {scalar_t__ fcx_max_data; } ;
struct dasd_device {int cdev; struct dasd_eckd_private* private; } ;
typedef scalar_t__ __u8 ;


 int dasd_path_get_notoperpm (struct dasd_device*) ;
 int dasd_path_set_tbvpm (struct dasd_device*,int ) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int get_ccwdev_lock (int ) ;
 scalar_t__ get_fcx_max_data (struct dasd_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void dasd_eckd_reset_path(struct dasd_device *device, __u8 pm)
{
 struct dasd_eckd_private *private = device->private;
 unsigned long flags;

 if (!private->fcx_max_data)
  private->fcx_max_data = get_fcx_max_data(device);
 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 dasd_path_set_tbvpm(device, pm ? : dasd_path_get_notoperpm(device));
 dasd_schedule_device_bh(device);
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
}
