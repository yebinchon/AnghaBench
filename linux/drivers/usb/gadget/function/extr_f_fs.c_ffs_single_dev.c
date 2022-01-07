
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_dev {int single; } ;


 int EBUSY ;
 int ffs_dev_lock () ;
 int ffs_dev_unlock () ;
 int ffs_devices ;
 int list_is_singular (int *) ;

int ffs_single_dev(struct ffs_dev *dev)
{
 int ret;

 ret = 0;
 ffs_dev_lock();

 if (!list_is_singular(&ffs_devices))
  ret = -EBUSY;
 else
  dev->single = 1;

 ffs_dev_unlock();
 return ret;
}
