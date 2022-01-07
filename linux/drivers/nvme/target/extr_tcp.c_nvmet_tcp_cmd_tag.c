
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct nvmet_tcp_cmd* u16 ;
struct nvmet_tcp_queue {int cmds; } ;
struct nvmet_tcp_cmd {int dummy; } ;



__attribute__((used)) static inline u16 nvmet_tcp_cmd_tag(struct nvmet_tcp_queue *queue,
  struct nvmet_tcp_cmd *cmd)
{
 return cmd - queue->cmds;
}
