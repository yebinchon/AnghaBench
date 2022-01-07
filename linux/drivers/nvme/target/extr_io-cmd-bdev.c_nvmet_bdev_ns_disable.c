
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ns {int * bdev; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int blkdev_put (int *,int) ;

void nvmet_bdev_ns_disable(struct nvmet_ns *ns)
{
 if (ns->bdev) {
  blkdev_put(ns->bdev, FMODE_WRITE | FMODE_READ);
  ns->bdev = ((void*)0);
 }
}
