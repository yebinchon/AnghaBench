
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_tcp_request {TYPE_2__* queue; } ;
struct TYPE_4__ {TYPE_1__* ctrl; } ;
struct TYPE_3__ {struct nvme_tcp_request async_req; } ;



__attribute__((used)) static inline bool nvme_tcp_async_req(struct nvme_tcp_request *req)
{
 return req == &req->queue->ctrl->async_req;
}
