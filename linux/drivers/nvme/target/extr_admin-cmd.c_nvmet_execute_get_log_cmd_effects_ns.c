
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvmet_req {int dummy; } ;
struct nvme_effects_log {void** iocs; void** acs; } ;


 int GFP_KERNEL ;
 int NVME_SC_INTERNAL ;
 void* cpu_to_le32 (int) ;
 int kfree (struct nvme_effects_log*) ;
 struct nvme_effects_log* kzalloc (int,int ) ;
 size_t nvme_admin_abort_cmd ;
 size_t nvme_admin_async_event ;
 size_t nvme_admin_get_features ;
 size_t nvme_admin_get_log_page ;
 size_t nvme_admin_identify ;
 size_t nvme_admin_keep_alive ;
 size_t nvme_admin_set_features ;
 size_t nvme_cmd_dsm ;
 size_t nvme_cmd_flush ;
 size_t nvme_cmd_read ;
 size_t nvme_cmd_write ;
 size_t nvme_cmd_write_zeroes ;
 int nvmet_copy_to_sgl (struct nvmet_req*,int ,struct nvme_effects_log*,int) ;
 int nvmet_req_complete (struct nvmet_req*,int ) ;

__attribute__((used)) static void nvmet_execute_get_log_cmd_effects_ns(struct nvmet_req *req)
{
 u16 status = NVME_SC_INTERNAL;
 struct nvme_effects_log *log;

 log = kzalloc(sizeof(*log), GFP_KERNEL);
 if (!log)
  goto out;

 log->acs[nvme_admin_get_log_page] = cpu_to_le32(1 << 0);
 log->acs[nvme_admin_identify] = cpu_to_le32(1 << 0);
 log->acs[nvme_admin_abort_cmd] = cpu_to_le32(1 << 0);
 log->acs[nvme_admin_set_features] = cpu_to_le32(1 << 0);
 log->acs[nvme_admin_get_features] = cpu_to_le32(1 << 0);
 log->acs[nvme_admin_async_event] = cpu_to_le32(1 << 0);
 log->acs[nvme_admin_keep_alive] = cpu_to_le32(1 << 0);

 log->iocs[nvme_cmd_read] = cpu_to_le32(1 << 0);
 log->iocs[nvme_cmd_write] = cpu_to_le32(1 << 0);
 log->iocs[nvme_cmd_flush] = cpu_to_le32(1 << 0);
 log->iocs[nvme_cmd_dsm] = cpu_to_le32(1 << 0);
 log->iocs[nvme_cmd_write_zeroes] = cpu_to_le32(1 << 0);

 status = nvmet_copy_to_sgl(req, 0, log, sizeof(*log));

 kfree(log);
out:
 nvmet_req_complete(req, status);
}
