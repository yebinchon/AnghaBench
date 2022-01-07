
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct nvmet_tcp_queue {int free_list; int pf_cache; TYPE_1__* port; } ;
struct TYPE_7__ {int msg_flags; } ;
struct TYPE_6__ {int * cqe; int * cmd; int port; } ;
struct nvmet_tcp_cmd {TYPE_4__* cmd_pdu; TYPE_4__* rsp_pdu; TYPE_4__* data_pdu; int entry; TYPE_3__ recv_msg; void* r2t_pdu; TYPE_2__ req; struct nvmet_tcp_queue* queue; } ;
struct TYPE_8__ {int cqe; int cmd; } ;
struct TYPE_5__ {int nport; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 int MSG_NOSIGNAL ;
 int __GFP_ZERO ;
 int list_add_tail (int *,int *) ;
 scalar_t__ nvmet_tcp_hdgst_len (struct nvmet_tcp_queue*) ;
 void* page_frag_alloc (int *,scalar_t__,int) ;
 int page_frag_free (TYPE_4__*) ;

__attribute__((used)) static int nvmet_tcp_alloc_cmd(struct nvmet_tcp_queue *queue,
  struct nvmet_tcp_cmd *c)
{
 u8 hdgst = nvmet_tcp_hdgst_len(queue);

 c->queue = queue;
 c->req.port = queue->port->nport;

 c->cmd_pdu = page_frag_alloc(&queue->pf_cache,
   sizeof(*c->cmd_pdu) + hdgst, GFP_KERNEL | __GFP_ZERO);
 if (!c->cmd_pdu)
  return -ENOMEM;
 c->req.cmd = &c->cmd_pdu->cmd;

 c->rsp_pdu = page_frag_alloc(&queue->pf_cache,
   sizeof(*c->rsp_pdu) + hdgst, GFP_KERNEL | __GFP_ZERO);
 if (!c->rsp_pdu)
  goto out_free_cmd;
 c->req.cqe = &c->rsp_pdu->cqe;

 c->data_pdu = page_frag_alloc(&queue->pf_cache,
   sizeof(*c->data_pdu) + hdgst, GFP_KERNEL | __GFP_ZERO);
 if (!c->data_pdu)
  goto out_free_rsp;

 c->r2t_pdu = page_frag_alloc(&queue->pf_cache,
   sizeof(*c->r2t_pdu) + hdgst, GFP_KERNEL | __GFP_ZERO);
 if (!c->r2t_pdu)
  goto out_free_data;

 c->recv_msg.msg_flags = MSG_DONTWAIT | MSG_NOSIGNAL;

 list_add_tail(&c->entry, &queue->free_list);

 return 0;
out_free_data:
 page_frag_free(c->data_pdu);
out_free_rsp:
 page_frag_free(c->rsp_pdu);
out_free_cmd:
 page_frag_free(c->cmd_pdu);
 return -ENOMEM;
}
