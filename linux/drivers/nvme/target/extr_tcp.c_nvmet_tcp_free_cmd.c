
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_tcp_cmd {int cmd_pdu; int rsp_pdu; int data_pdu; int r2t_pdu; } ;


 int page_frag_free (int ) ;

__attribute__((used)) static void nvmet_tcp_free_cmd(struct nvmet_tcp_cmd *c)
{
 page_frag_free(c->r2t_pdu);
 page_frag_free(c->data_pdu);
 page_frag_free(c->rsp_pdu);
 page_frag_free(c->cmd_pdu);
}
