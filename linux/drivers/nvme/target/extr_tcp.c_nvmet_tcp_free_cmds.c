
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_tcp_cmd {int dummy; } ;
struct nvmet_tcp_queue {int nr_cmds; struct nvmet_tcp_cmd connect; struct nvmet_tcp_cmd* cmds; } ;


 int kfree (struct nvmet_tcp_cmd*) ;
 int nvmet_tcp_free_cmd (struct nvmet_tcp_cmd*) ;

__attribute__((used)) static void nvmet_tcp_free_cmds(struct nvmet_tcp_queue *queue)
{
 struct nvmet_tcp_cmd *cmds = queue->cmds;
 int i;

 for (i = 0; i < queue->nr_cmds; i++)
  nvmet_tcp_free_cmd(cmds + i);

 nvmet_tcp_free_cmd(&queue->connect);
 kfree(cmds);
}
