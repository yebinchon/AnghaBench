
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct block_device {int bd_mutex; int bd_inode; int bd_disk; } ;


 int CAP_SYS_ADMIN ;
 int DASD_STATE_BASIC ;
 int EACCES ;
 int ENODEV ;
 int capable (int ) ;
 struct dasd_device* dasd_device_from_gendisk (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_set_target_state (struct dasd_device*,int ) ;
 int i_size_write (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
dasd_ioctl_disable(struct block_device *bdev)
{
 struct dasd_device *base;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 base = dasd_device_from_gendisk(bdev->bd_disk);
 if (!base)
  return -ENODEV;
 dasd_set_target_state(base, DASD_STATE_BASIC);




 mutex_lock(&bdev->bd_mutex);
 i_size_write(bdev->bd_inode, 0);
 mutex_unlock(&bdev->bd_mutex);
 dasd_put_device(base);
 return 0;
}
