
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvmet_req {TYPE_1__* sq; } ;
struct TYPE_2__ {int ref; } ;


 int __nvmet_req_complete (struct nvmet_req*,int ) ;
 int percpu_ref_put (int *) ;

void nvmet_req_complete(struct nvmet_req *req, u16 status)
{
 __nvmet_req_complete(req, status);
 percpu_ref_put(&req->sq->ref);
}
