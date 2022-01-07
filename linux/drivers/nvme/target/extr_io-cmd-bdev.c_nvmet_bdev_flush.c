
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvmet_req {TYPE_1__* ns; } ;
struct TYPE_2__ {int bdev; } ;


 int GFP_KERNEL ;
 int NVME_SC_DNR ;
 int NVME_SC_INTERNAL ;
 scalar_t__ blkdev_issue_flush (int ,int ,int *) ;

u16 nvmet_bdev_flush(struct nvmet_req *req)
{
 if (blkdev_issue_flush(req->ns->bdev, GFP_KERNEL, ((void*)0)))
  return NVME_SC_INTERNAL | NVME_SC_DNR;
 return 0;
}
