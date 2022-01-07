
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct nvmet_req {TYPE_3__* cmd; TYPE_1__* ns; } ;
struct TYPE_5__ {int opcode; } ;
struct TYPE_6__ {TYPE_2__ common; } ;
struct TYPE_4__ {int readonly; } ;


 int NVME_SC_NS_WRITE_PROTECTED ;


 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline u16 nvmet_io_cmd_check_access(struct nvmet_req *req)
{
 if (unlikely(req->ns->readonly)) {
  switch (req->cmd->common.opcode) {
  case 128:
  case 129:
   break;
  default:
   return NVME_SC_NS_WRITE_PROTECTED;
  }
 }

 return 0;
}
