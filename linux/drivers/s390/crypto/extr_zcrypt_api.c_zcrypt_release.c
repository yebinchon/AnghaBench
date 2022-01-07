
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcdn_device {int device; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_inode; } ;
struct TYPE_2__ {int i_rdev; int * i_cdev; } ;


 int ap_perms_mutex ;
 int atomic_dec (int *) ;
 struct zcdn_device* find_zcdndev_by_devt (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int zcrypt_cdev ;
 int zcrypt_open_count ;

__attribute__((used)) static int zcrypt_release(struct inode *inode, struct file *filp)
{
 atomic_dec(&zcrypt_open_count);
 return 0;
}
