
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* block; } ;
struct block_device {int bd_mutex; int bd_inode; int bd_disk; } ;
typedef int loff_t ;
struct TYPE_2__ {int gdp; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int ENODEV ;
 int capable (int ) ;
 struct dasd_device* dasd_device_from_gendisk (int ) ;
 int dasd_enable_device (struct dasd_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 scalar_t__ get_capacity (int ) ;
 int i_size_write (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
dasd_ioctl_enable(struct block_device *bdev)
{
 struct dasd_device *base;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 base = dasd_device_from_gendisk(bdev->bd_disk);
 if (!base)
  return -ENODEV;

 dasd_enable_device(base);

 mutex_lock(&bdev->bd_mutex);
 i_size_write(bdev->bd_inode,
       (loff_t)get_capacity(base->block->gdp) << 9);
 mutex_unlock(&bdev->bd_mutex);
 dasd_put_device(base);
 return 0;
}
