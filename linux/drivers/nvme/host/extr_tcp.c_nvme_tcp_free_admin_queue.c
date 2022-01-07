
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvme_ctrl {int dummy; } ;
struct TYPE_4__ {int * pdu; } ;
struct TYPE_5__ {TYPE_1__ async_req; } ;


 int nvme_tcp_free_async_req (TYPE_2__*) ;
 int nvme_tcp_free_queue (struct nvme_ctrl*,int ) ;
 TYPE_2__* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_free_admin_queue(struct nvme_ctrl *ctrl)
{
 if (to_tcp_ctrl(ctrl)->async_req.pdu) {
  nvme_tcp_free_async_req(to_tcp_ctrl(ctrl));
  to_tcp_ctrl(ctrl)->async_req.pdu = ((void*)0);
 }

 nvme_tcp_free_queue(ctrl, 0);
}
