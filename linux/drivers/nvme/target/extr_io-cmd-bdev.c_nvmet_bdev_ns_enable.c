
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nvmet_ns {TYPE_1__* bdev; int blksize_shift; int size; int device_path; } ;
struct TYPE_5__ {int bd_inode; } ;


 int ENOTBLK ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int bdev_logical_block_size (TYPE_1__*) ;
 TYPE_1__* blkdev_get_by_path (int ,int,int *) ;
 int blksize_bits (int ) ;
 int i_size_read (int ) ;
 int pr_err (char*,int ,int) ;

int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
{
 int ret;

 ns->bdev = blkdev_get_by_path(ns->device_path,
   FMODE_READ | FMODE_WRITE, ((void*)0));
 if (IS_ERR(ns->bdev)) {
  ret = PTR_ERR(ns->bdev);
  if (ret != -ENOTBLK) {
   pr_err("failed to open block device %s: (%ld)\n",
     ns->device_path, PTR_ERR(ns->bdev));
  }
  ns->bdev = ((void*)0);
  return ret;
 }
 ns->size = i_size_read(ns->bdev->bd_inode);
 ns->blksize_shift = blksize_bits(bdev_logical_block_size(ns->bdev));
 return 0;
}
