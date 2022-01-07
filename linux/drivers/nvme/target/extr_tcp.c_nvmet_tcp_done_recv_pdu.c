
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_17__ {int opcode; } ;
struct nvme_command {TYPE_3__ common; } ;
struct nvme_tcp_hdr {scalar_t__ type; } ;
struct TYPE_15__ {struct nvme_command cmd; struct nvme_tcp_hdr hdr; } ;
struct TYPE_16__ {TYPE_1__ cmd; } ;
struct nvmet_tcp_queue {scalar_t__ state; scalar_t__ idx; TYPE_7__* cmd; int rcv_state; int nvme_sq; int nvme_cq; int send_list_len; int nr_cmds; TYPE_2__ pdu; } ;
struct nvmet_req {TYPE_13__* cmd; } ;
struct TYPE_21__ {struct nvmet_req req; } ;
struct TYPE_18__ {int length; } ;
struct TYPE_19__ {TYPE_4__ sgl; } ;
struct TYPE_20__ {TYPE_5__ dptr; int opcode; int command_id; } ;
struct TYPE_14__ {TYPE_6__ common; } ;


 int EAGAIN ;
 int ENOMEM ;
 int EPROTO ;
 scalar_t__ NVMET_TCP_Q_CONNECTING ;
 int NVMET_TCP_RECV_DATA ;
 int le32_to_cpu (int ) ;
 int memcpy (TYPE_13__*,struct nvme_command*,int) ;
 scalar_t__ nvme_tcp_h2c_data ;
 scalar_t__ nvme_tcp_icreq ;
 int nvmet_prepare_receive_pdu (struct nvmet_tcp_queue*) ;
 int nvmet_req_complete (struct nvmet_req*,int) ;
 int nvmet_req_execute (struct nvmet_req*) ;
 int nvmet_req_init (struct nvmet_req*,int *,int *,int *) ;
 int nvmet_tcp_fatal_error (struct nvmet_tcp_queue*) ;
 TYPE_7__* nvmet_tcp_get_cmd (struct nvmet_tcp_queue*) ;
 int nvmet_tcp_handle_h2c_data_pdu (struct nvmet_tcp_queue*) ;
 int nvmet_tcp_handle_icreq (struct nvmet_tcp_queue*) ;
 int nvmet_tcp_handle_req_failure (struct nvmet_tcp_queue*,TYPE_7__*,struct nvmet_req*) ;
 scalar_t__ nvmet_tcp_has_inline_data (TYPE_7__*) ;
 int nvmet_tcp_map_data (TYPE_7__*) ;
 int nvmet_tcp_map_pdu_iovec (TYPE_7__*) ;
 scalar_t__ nvmet_tcp_need_data_in (TYPE_7__*) ;
 int nvmet_tcp_ops ;
 int nvmet_tcp_queue_response (struct nvmet_req*) ;
 int pr_err (char*,scalar_t__,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvmet_tcp_done_recv_pdu(struct nvmet_tcp_queue *queue)
{
 struct nvme_tcp_hdr *hdr = &queue->pdu.cmd.hdr;
 struct nvme_command *nvme_cmd = &queue->pdu.cmd.cmd;
 struct nvmet_req *req;
 int ret;

 if (unlikely(queue->state == NVMET_TCP_Q_CONNECTING)) {
  if (hdr->type != nvme_tcp_icreq) {
   pr_err("unexpected pdu type (%d) before icreq\n",
    hdr->type);
   nvmet_tcp_fatal_error(queue);
   return -EPROTO;
  }
  return nvmet_tcp_handle_icreq(queue);
 }

 if (hdr->type == nvme_tcp_h2c_data) {
  ret = nvmet_tcp_handle_h2c_data_pdu(queue);
  if (unlikely(ret))
   return ret;
  return 0;
 }

 queue->cmd = nvmet_tcp_get_cmd(queue);
 if (unlikely(!queue->cmd)) {

  pr_err("queue %d: out of commands (%d) send_list_len: %d, opcode: %d",
   queue->idx, queue->nr_cmds, queue->send_list_len,
   nvme_cmd->common.opcode);
  nvmet_tcp_fatal_error(queue);
  return -ENOMEM;
 }

 req = &queue->cmd->req;
 memcpy(req->cmd, nvme_cmd, sizeof(*nvme_cmd));

 if (unlikely(!nvmet_req_init(req, &queue->nvme_cq,
   &queue->nvme_sq, &nvmet_tcp_ops))) {
  pr_err("failed cmd %p id %d opcode %d, data_len: %d\n",
   req->cmd, req->cmd->common.command_id,
   req->cmd->common.opcode,
   le32_to_cpu(req->cmd->common.dptr.sgl.length));

  nvmet_tcp_handle_req_failure(queue, queue->cmd, req);
  return -EAGAIN;
 }

 ret = nvmet_tcp_map_data(queue->cmd);
 if (unlikely(ret)) {
  pr_err("queue %d: failed to map data\n", queue->idx);
  if (nvmet_tcp_has_inline_data(queue->cmd))
   nvmet_tcp_fatal_error(queue);
  else
   nvmet_req_complete(req, ret);
  ret = -EAGAIN;
  goto out;
 }

 if (nvmet_tcp_need_data_in(queue->cmd)) {
  if (nvmet_tcp_has_inline_data(queue->cmd)) {
   queue->rcv_state = NVMET_TCP_RECV_DATA;
   nvmet_tcp_map_pdu_iovec(queue->cmd);
   return 0;
  }

  nvmet_tcp_queue_response(&queue->cmd->req);
  goto out;
 }

 nvmet_req_execute(&queue->cmd->req);
out:
 nvmet_prepare_receive_pdu(queue);
 return ret;
}
