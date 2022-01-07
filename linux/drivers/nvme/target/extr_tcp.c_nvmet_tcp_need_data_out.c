
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ transfer_len; TYPE_1__* cqe; int cmd; } ;
struct nvmet_tcp_cmd {TYPE_2__ req; } ;
struct TYPE_3__ {int status; } ;


 int nvme_is_write (int ) ;

__attribute__((used)) static inline bool nvmet_tcp_need_data_out(struct nvmet_tcp_cmd *cmd)
{
 return !nvme_is_write(cmd->req.cmd) &&
  cmd->req.transfer_len > 0 &&
  !cmd->req.cqe->status;
}
