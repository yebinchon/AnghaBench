
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_request {int pdu; } ;
struct nvme_tcp_ctrl {struct nvme_tcp_request async_req; } ;


 int page_frag_free (int ) ;

__attribute__((used)) static void nvme_tcp_free_async_req(struct nvme_tcp_ctrl *ctrl)
{
 struct nvme_tcp_request *async = &ctrl->async_req;

 page_frag_free(async->pdu);
}
