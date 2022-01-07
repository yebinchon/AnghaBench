
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ap_perms {int dummy; } ;
struct zcdn_device {struct ap_perms perms; } ;
struct inode {int dummy; } ;
struct file {void* private_data; TYPE_1__* f_inode; } ;
struct TYPE_2__ {int i_rdev; int * i_cdev; } ;


 int ERESTARTSYS ;
 struct ap_perms ap_perms ;
 int ap_perms_mutex ;
 int atomic_inc (int *) ;
 struct zcdn_device* find_zcdndev_by_devt (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stream_open (struct inode*,struct file*) ;
 int zcrypt_cdev ;
 int zcrypt_open_count ;

__attribute__((used)) static int zcrypt_open(struct inode *inode, struct file *filp)
{
 struct ap_perms *perms = &ap_perms;
 filp->private_data = (void *) perms;

 atomic_inc(&zcrypt_open_count);
 return stream_open(inode, filp);
}
