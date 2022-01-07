
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvmet_req {TYPE_2__* sq; } ;
struct TYPE_4__ {TYPE_1__* ctrl; } ;
struct TYPE_3__ {int aen_enabled; } ;


 int READ_ONCE (int ) ;
 int nvmet_set_result (struct nvmet_req*,int ) ;

void nvmet_get_feat_async_event(struct nvmet_req *req)
{
 nvmet_set_result(req, READ_ONCE(req->sq->ctrl->aen_enabled));
}
