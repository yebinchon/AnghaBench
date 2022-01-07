
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_tcp_data_pdu {size_t ttag; int data_length; int data_offset; } ;
struct TYPE_2__ {struct nvme_tcp_data_pdu data; } ;
struct nvmet_tcp_queue {int rcv_state; struct nvmet_tcp_cmd* cmd; struct nvmet_tcp_cmd* cmds; TYPE_1__ pdu; } ;
struct nvmet_tcp_cmd {scalar_t__ rbytes_done; scalar_t__ pdu_recv; scalar_t__ pdu_len; int req; } ;


 int EPROTO ;
 int NVMET_TCP_RECV_DATA ;
 int NVME_SC_DNR ;
 int NVME_SC_INVALID_FIELD ;
 scalar_t__ le32_to_cpu (int ) ;
 int nvmet_req_complete (int *,int) ;
 int nvmet_tcp_map_pdu_iovec (struct nvmet_tcp_cmd*) ;
 int pr_err (char*,size_t,scalar_t__,scalar_t__) ;

__attribute__((used)) static int nvmet_tcp_handle_h2c_data_pdu(struct nvmet_tcp_queue *queue)
{
 struct nvme_tcp_data_pdu *data = &queue->pdu.data;
 struct nvmet_tcp_cmd *cmd;

 cmd = &queue->cmds[data->ttag];

 if (le32_to_cpu(data->data_offset) != cmd->rbytes_done) {
  pr_err("ttag %u unexpected data offset %u (expected %u)\n",
   data->ttag, le32_to_cpu(data->data_offset),
   cmd->rbytes_done);

  nvmet_req_complete(&cmd->req,
   NVME_SC_INVALID_FIELD | NVME_SC_DNR);
  return -EPROTO;
 }

 cmd->pdu_len = le32_to_cpu(data->data_length);
 cmd->pdu_recv = 0;
 nvmet_tcp_map_pdu_iovec(cmd);
 queue->cmd = cmd;
 queue->rcv_state = NVMET_TCP_RECV_DATA;

 return 0;
}
