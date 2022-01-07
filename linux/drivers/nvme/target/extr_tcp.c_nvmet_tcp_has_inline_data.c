
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; } ;
struct nvmet_tcp_cmd {int rbytes_done; scalar_t__ pdu_len; TYPE_1__ req; } ;


 scalar_t__ nvme_is_write (int ) ;

__attribute__((used)) static inline bool nvmet_tcp_has_inline_data(struct nvmet_tcp_cmd *cmd)
{
 return nvme_is_write(cmd->req.cmd) && cmd->pdu_len &&
  !cmd->rbytes_done;
}
