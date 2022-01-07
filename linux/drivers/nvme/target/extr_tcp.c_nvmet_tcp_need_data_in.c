
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cqe; } ;
struct nvmet_tcp_cmd {TYPE_2__ req; } ;
struct TYPE_3__ {int status; } ;


 scalar_t__ nvmet_tcp_has_data_in (struct nvmet_tcp_cmd*) ;

__attribute__((used)) static inline bool nvmet_tcp_need_data_in(struct nvmet_tcp_cmd *cmd)
{
 return nvmet_tcp_has_data_in(cmd) && !cmd->req.cqe->status;
}
