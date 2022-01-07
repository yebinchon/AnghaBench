
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct nvmet_tcp_queue {int snd_hash; scalar_t__ hdr_digest; } ;
struct nvmet_tcp_cmd {struct nvmet_tcp_queue* queue; int state; scalar_t__ offset; struct nvme_tcp_rsp_pdu* rsp_pdu; } ;
struct TYPE_2__ {int hlen; int flags; int plen; scalar_t__ pdo; int type; } ;
struct nvme_tcp_rsp_pdu {TYPE_1__ hdr; } ;


 int NVMET_TCP_SEND_RESPONSE ;
 int NVME_TCP_F_HDGST ;
 int cpu_to_le32 (scalar_t__) ;
 int nvme_tcp_rsp ;
 int nvmet_tcp_hdgst (int ,struct nvme_tcp_rsp_pdu*,int) ;
 scalar_t__ nvmet_tcp_hdgst_len (struct nvmet_tcp_queue*) ;

__attribute__((used)) static void nvmet_setup_response_pdu(struct nvmet_tcp_cmd *cmd)
{
 struct nvme_tcp_rsp_pdu *pdu = cmd->rsp_pdu;
 struct nvmet_tcp_queue *queue = cmd->queue;
 u8 hdgst = nvmet_tcp_hdgst_len(cmd->queue);

 cmd->offset = 0;
 cmd->state = NVMET_TCP_SEND_RESPONSE;

 pdu->hdr.type = nvme_tcp_rsp;
 pdu->hdr.flags = 0;
 pdu->hdr.hlen = sizeof(*pdu);
 pdu->hdr.pdo = 0;
 pdu->hdr.plen = cpu_to_le32(pdu->hdr.hlen + hdgst);
 if (cmd->queue->hdr_digest) {
  pdu->hdr.flags |= NVME_TCP_F_HDGST;
  nvmet_tcp_hdgst(queue->snd_hash, pdu, sizeof(*pdu));
 }
}
