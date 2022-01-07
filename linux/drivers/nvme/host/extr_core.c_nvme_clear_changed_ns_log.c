
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int device; } ;
typedef int __le32 ;


 int GFP_KERNEL ;
 int NVME_LOG_CHANGED_NS ;
 int NVME_MAX_CHANGED_NAMESPACES ;
 int NVME_NSID_ALL ;
 int dev_warn (int ,char*,int) ;
 int kfree (int *) ;
 int * kzalloc (size_t,int ) ;
 int nvme_get_log (struct nvme_ctrl*,int ,int ,int ,int *,size_t,int ) ;

__attribute__((used)) static void nvme_clear_changed_ns_log(struct nvme_ctrl *ctrl)
{
 size_t log_size = NVME_MAX_CHANGED_NAMESPACES * sizeof(__le32);
 __le32 *log;
 int error;

 log = kzalloc(log_size, GFP_KERNEL);
 if (!log)
  return;







 error = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_CHANGED_NS, 0, log,
   log_size, 0);
 if (error)
  dev_warn(ctrl->device,
   "reading changed ns log failed: %d\n", error);

 kfree(log);
}
