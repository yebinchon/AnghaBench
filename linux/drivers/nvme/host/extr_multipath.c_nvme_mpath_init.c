
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_id_ctrl {int anagrpmax; int nanagrpid; int anatt; int anacap; } ;
struct nvme_ctrl {int nanagrpid; int ana_log_size; int max_namespaces; int max_hw_sectors; int * ana_log_buf; int ana_work; int device; int anatt_timer; int ana_lock; void* anagrpmax; int anatt; int anacap; TYPE_1__* subsys; } ;
struct nvme_ana_rsp_hdr {int dummy; } ;
struct nvme_ana_group_desc {int dummy; } ;
typedef int __le32 ;
struct TYPE_2__ {int cmic; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int SECTOR_SHIFT ;
 int dev_err (int ,char*,...) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int multipath ;
 int mutex_init (int *) ;
 int nvme_ana_work ;
 int nvme_anatt_timeout ;
 int nvme_read_ana_log (struct nvme_ctrl*) ;
 int timer_setup (int *,int ,int ) ;

int nvme_mpath_init(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
{
 int error;


 if (!multipath || !ctrl->subsys || !(ctrl->subsys->cmic & (1 << 3)))
  return 0;

 ctrl->anacap = id->anacap;
 ctrl->anatt = id->anatt;
 ctrl->nanagrpid = le32_to_cpu(id->nanagrpid);
 ctrl->anagrpmax = le32_to_cpu(id->anagrpmax);

 mutex_init(&ctrl->ana_lock);
 timer_setup(&ctrl->anatt_timer, nvme_anatt_timeout, 0);
 ctrl->ana_log_size = sizeof(struct nvme_ana_rsp_hdr) +
  ctrl->nanagrpid * sizeof(struct nvme_ana_group_desc);
 ctrl->ana_log_size += ctrl->max_namespaces * sizeof(__le32);

 if (ctrl->ana_log_size > ctrl->max_hw_sectors << SECTOR_SHIFT) {
  dev_err(ctrl->device,
   "ANA log page size (%zd) larger than MDTS (%d).\n",
   ctrl->ana_log_size,
   ctrl->max_hw_sectors << SECTOR_SHIFT);
  dev_err(ctrl->device, "disabling ANA support.\n");
  return 0;
 }

 INIT_WORK(&ctrl->ana_work, nvme_ana_work);
 ctrl->ana_log_buf = kmalloc(ctrl->ana_log_size, GFP_KERNEL);
 if (!ctrl->ana_log_buf) {
  error = -ENOMEM;
  goto out;
 }

 error = nvme_read_ana_log(ctrl);
 if (error)
  goto out_free_ana_log_buf;
 return 0;
out_free_ana_log_buf:
 kfree(ctrl->ana_log_buf);
 ctrl->ana_log_buf = ((void*)0);
out:
 return error;
}
