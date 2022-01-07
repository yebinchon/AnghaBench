
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvmet_tcp_queue {scalar_t__ data_digest; struct nvmet_tcp_cmd* cmd; } ;
struct TYPE_7__ {scalar_t__ transfer_len; } ;
struct TYPE_6__ {int msg_flags; } ;
struct nvmet_tcp_cmd {int pdu_recv; scalar_t__ rbytes_done; int flags; TYPE_3__ req; TYPE_2__ recv_msg; TYPE_1__* queue; } ;
struct TYPE_5__ {int sock; } ;


 int NVMET_TCP_F_INIT_FAILED ;
 scalar_t__ msg_data_left (TYPE_2__*) ;
 int nvmet_prepare_receive_pdu (struct nvmet_tcp_queue*) ;
 int nvmet_req_execute (TYPE_3__*) ;
 int nvmet_tcp_prep_recv_ddgst (struct nvmet_tcp_cmd*) ;
 int nvmet_tcp_unmap_pdu_iovec (struct nvmet_tcp_cmd*) ;
 int sock_recvmsg (int ,TYPE_2__*,int ) ;

__attribute__((used)) static int nvmet_tcp_try_recv_data(struct nvmet_tcp_queue *queue)
{
 struct nvmet_tcp_cmd *cmd = queue->cmd;
 int ret;

 while (msg_data_left(&cmd->recv_msg)) {
  ret = sock_recvmsg(cmd->queue->sock, &cmd->recv_msg,
   cmd->recv_msg.msg_flags);
  if (ret <= 0)
   return ret;

  cmd->pdu_recv += ret;
  cmd->rbytes_done += ret;
 }

 nvmet_tcp_unmap_pdu_iovec(cmd);

 if (!(cmd->flags & NVMET_TCP_F_INIT_FAILED) &&
     cmd->rbytes_done == cmd->req.transfer_len) {
  if (queue->data_digest) {
   nvmet_tcp_prep_recv_ddgst(cmd);
   return 0;
  }
  nvmet_req_execute(&cmd->req);
 }

 nvmet_prepare_receive_pdu(queue);
 return 0;
}
