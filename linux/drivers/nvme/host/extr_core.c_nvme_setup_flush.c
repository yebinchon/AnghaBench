
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_ns {TYPE_2__* head; } ;
struct TYPE_3__ {int nsid; int opcode; } ;
struct nvme_command {TYPE_1__ common; } ;
struct TYPE_4__ {int ns_id; } ;


 int cpu_to_le32 (int ) ;
 int nvme_cmd_flush ;

__attribute__((used)) static inline void nvme_setup_flush(struct nvme_ns *ns,
  struct nvme_command *cmnd)
{
 cmnd->common.opcode = nvme_cmd_flush;
 cmnd->common.nsid = cpu_to_le32(ns->head->ns_id);
}
