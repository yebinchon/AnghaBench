
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvmet_req {int error_slba; struct nvmet_ns* ns; } ;
struct nvmet_ns {int blksize_shift; int bdev; } ;
struct nvme_dsm_range {int slba; int nlb; } ;
struct bio {int dummy; } ;


 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int NVME_SC_SUCCESS ;
 int __blkdev_issue_discard (int ,int,int,int ,int ,struct bio**) ;
 int errno_to_nvme_status (struct nvmet_req*,int) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static u16 nvmet_bdev_discard_range(struct nvmet_req *req,
  struct nvme_dsm_range *range, struct bio **bio)
{
 struct nvmet_ns *ns = req->ns;
 int ret;

 ret = __blkdev_issue_discard(ns->bdev,
   le64_to_cpu(range->slba) << (ns->blksize_shift - 9),
   le32_to_cpu(range->nlb) << (ns->blksize_shift - 9),
   GFP_KERNEL, 0, bio);
 if (ret && ret != -EOPNOTSUPP) {
  req->error_slba = le64_to_cpu(range->slba);
  return errno_to_nvme_status(req, ret);
 }
 return NVME_SC_SUCCESS;
}
