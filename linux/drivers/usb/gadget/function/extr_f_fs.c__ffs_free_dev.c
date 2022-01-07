
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ffs_dev {TYPE_1__* ffs_data; int entry; } ;
struct TYPE_2__ {int * private_data; } ;


 int ffs_devices ;
 int functionfs_cleanup () ;
 int kfree (struct ffs_dev*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void _ffs_free_dev(struct ffs_dev *dev)
{
 list_del(&dev->entry);


 if (dev->ffs_data)
  dev->ffs_data->private_data = ((void*)0);

 kfree(dev);
 if (list_empty(&ffs_devices))
  functionfs_cleanup();
}
