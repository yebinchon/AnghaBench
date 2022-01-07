
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_tcp_queue {int rcv_state; int left; scalar_t__ offset; int rcv_hash; } ;
struct nvmet_tcp_cmd {struct nvmet_tcp_queue* queue; } ;


 int NVMET_TCP_RECV_DDGST ;
 int NVME_TCP_DIGEST_LENGTH ;
 int nvmet_tcp_ddgst (int ,struct nvmet_tcp_cmd*) ;

__attribute__((used)) static void nvmet_tcp_prep_recv_ddgst(struct nvmet_tcp_cmd *cmd)
{
 struct nvmet_tcp_queue *queue = cmd->queue;

 nvmet_tcp_ddgst(queue->rcv_hash, cmd);
 queue->offset = 0;
 queue->left = NVME_TCP_DIGEST_LENGTH;
 queue->rcv_state = NVMET_TCP_RECV_DDGST;
}
