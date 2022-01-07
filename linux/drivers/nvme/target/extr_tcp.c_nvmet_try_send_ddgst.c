
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sqhd_disabled; } ;
struct nvmet_tcp_queue {int * snd_cmd; TYPE_1__ nvme_sq; int sock; } ;
struct nvmet_tcp_cmd {int offset; struct nvmet_tcp_queue* queue; int exp_ddgst; } ;
struct msghdr {int msg_flags; } ;
struct kvec {int iov_len; int * iov_base; } ;


 int MSG_DONTWAIT ;
 int NVME_TCP_DIGEST_LENGTH ;
 int kernel_sendmsg (int ,struct msghdr*,struct kvec*,int,int) ;
 int nvmet_setup_response_pdu (struct nvmet_tcp_cmd*) ;
 int nvmet_tcp_put_cmd (struct nvmet_tcp_cmd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvmet_try_send_ddgst(struct nvmet_tcp_cmd *cmd)
{
 struct nvmet_tcp_queue *queue = cmd->queue;
 struct msghdr msg = { .msg_flags = MSG_DONTWAIT };
 struct kvec iov = {
  .iov_base = &cmd->exp_ddgst + cmd->offset,
  .iov_len = NVME_TCP_DIGEST_LENGTH - cmd->offset
 };
 int ret;

 ret = kernel_sendmsg(queue->sock, &msg, &iov, 1, iov.iov_len);
 if (unlikely(ret <= 0))
  return ret;

 cmd->offset += ret;

 if (queue->nvme_sq.sqhd_disabled) {
  cmd->queue->snd_cmd = ((void*)0);
  nvmet_tcp_put_cmd(cmd);
 } else {
  nvmet_setup_response_pdu(cmd);
 }
 return 1;
}
