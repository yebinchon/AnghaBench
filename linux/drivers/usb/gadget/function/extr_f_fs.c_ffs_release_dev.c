
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_dev {int mounted; int (* ffs_release_dev_callback ) (struct ffs_dev*) ;} ;
struct ffs_data {struct ffs_dev* private_data; } ;


 int ENTER () ;
 int ffs_dev_lock () ;
 int ffs_dev_unlock () ;
 int stub1 (struct ffs_dev*) ;

__attribute__((used)) static void ffs_release_dev(struct ffs_data *ffs_data)
{
 struct ffs_dev *ffs_dev;

 ENTER();
 ffs_dev_lock();

 ffs_dev = ffs_data->private_data;
 if (ffs_dev) {
  ffs_dev->mounted = 0;

  if (ffs_dev->ffs_release_dev_callback)
   ffs_dev->ffs_release_dev_callback(ffs_dev);
 }

 ffs_dev_unlock();
}
