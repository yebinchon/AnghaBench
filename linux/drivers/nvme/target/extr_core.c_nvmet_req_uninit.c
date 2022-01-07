
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_req {scalar_t__ ns; TYPE_1__* sq; } ;
struct TYPE_2__ {int ref; } ;


 int nvmet_put_namespace (scalar_t__) ;
 int percpu_ref_put (int *) ;

void nvmet_req_uninit(struct nvmet_req *req)
{
 percpu_ref_put(&req->sq->ref);
 if (req->ns)
  nvmet_put_namespace(req->ns);
}
