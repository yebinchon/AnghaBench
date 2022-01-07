
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ transfer_len; int cmd; } ;
struct nvmet_tcp_cmd {scalar_t__ rbytes_done; TYPE_1__ req; } ;


 scalar_t__ nvme_is_write (int ) ;

__attribute__((used)) static inline bool nvmet_tcp_has_data_in(struct nvmet_tcp_cmd *cmd)
{
 return nvme_is_write(cmd->req.cmd) &&
  cmd->rbytes_done < cmd->req.transfer_len;
}
