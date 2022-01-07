
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_tcp_queue {int left; int rcv_state; int * cmd; scalar_t__ offset; } ;
struct nvme_tcp_hdr {int dummy; } ;


 int NVMET_TCP_RECV_PDU ;

__attribute__((used)) static void nvmet_prepare_receive_pdu(struct nvmet_tcp_queue *queue)
{
 queue->offset = 0;
 queue->left = sizeof(struct nvme_tcp_hdr);
 queue->cmd = ((void*)0);
 queue->rcv_state = NVMET_TCP_RECV_PDU;
}
