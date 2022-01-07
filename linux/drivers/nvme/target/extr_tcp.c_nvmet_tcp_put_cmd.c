
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_tcp_cmd {TYPE_1__* queue; int entry; } ;
struct TYPE_2__ {int free_list; struct nvmet_tcp_cmd connect; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void nvmet_tcp_put_cmd(struct nvmet_tcp_cmd *cmd)
{
 if (unlikely(cmd == &cmd->queue->connect))
  return;

 list_add_tail(&cmd->entry, &cmd->queue->free_list);
}
