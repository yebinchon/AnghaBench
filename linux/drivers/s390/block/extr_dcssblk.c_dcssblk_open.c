
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcssblk_dev_info {int use_count; } ;
struct block_device {int bd_block_size; TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct dcssblk_dev_info* private_data; } ;


 int ENODEV ;
 int atomic_inc (int *) ;

__attribute__((used)) static int
dcssblk_open(struct block_device *bdev, fmode_t mode)
{
 struct dcssblk_dev_info *dev_info;
 int rc;

 dev_info = bdev->bd_disk->private_data;
 if (((void*)0) == dev_info) {
  rc = -ENODEV;
  goto out;
 }
 atomic_inc(&dev_info->use_count);
 bdev->bd_block_size = 4096;
 rc = 0;
out:
 return rc;
}
