
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns_ids {int dummy; } ;
struct nvme_ns {TYPE_1__* head; int flags; struct nvme_ctrl* ctrl; } ;
struct nvme_id_ns {scalar_t__ ncap; } ;
struct nvme_ctrl {int device; } ;
struct gendisk {struct nvme_ns* private_data; } ;
struct TYPE_2__ {int ns_id; int ids; } ;


 int ENODEV ;
 int ENOMEM ;
 int NVME_NS_DEAD ;
 int NVME_SC_DNR ;
 int __nvme_revalidate_disk (struct gendisk*,struct nvme_id_ns*) ;
 int blk_status_to_errno (int ) ;
 int dev_err (int ,char*,int ) ;
 int kfree (struct nvme_id_ns*) ;
 int nvme_error_status (int) ;
 int nvme_identify_ns (struct nvme_ctrl*,int ,struct nvme_id_ns**) ;
 int nvme_ns_ids_equal (int *,struct nvme_ns_ids*) ;
 int nvme_report_ns_ids (struct nvme_ctrl*,int ,struct nvme_id_ns*,struct nvme_ns_ids*) ;
 int set_capacity (struct gendisk*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nvme_revalidate_disk(struct gendisk *disk)
{
 struct nvme_ns *ns = disk->private_data;
 struct nvme_ctrl *ctrl = ns->ctrl;
 struct nvme_id_ns *id;
 struct nvme_ns_ids ids;
 int ret = 0;

 if (test_bit(NVME_NS_DEAD, &ns->flags)) {
  set_capacity(disk, 0);
  return -ENODEV;
 }

 ret = nvme_identify_ns(ctrl, ns->head->ns_id, &id);
 if (ret)
  goto out;

 if (id->ncap == 0) {
  ret = -ENODEV;
  goto free_id;
 }

 __nvme_revalidate_disk(disk, id);
 ret = nvme_report_ns_ids(ctrl, ns->head->ns_id, id, &ids);
 if (ret)
  goto free_id;

 if (!nvme_ns_ids_equal(&ns->head->ids, &ids)) {
  dev_err(ctrl->device,
   "identifiers changed for nsid %d\n", ns->head->ns_id);
  ret = -ENODEV;
 }

free_id:
 kfree(id);
out:




 if (ret == -ENOMEM || (ret > 0 && !(ret & NVME_SC_DNR)))
  ret = 0;
 else if (ret > 0)
  ret = blk_status_to_errno(nvme_error_status(ret));
 return ret;
}
