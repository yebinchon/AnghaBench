
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_req {int dummy; } ;


 int nvmet_req_complete (struct nvmet_req*,int ) ;
 int nvmet_set_result (struct nvmet_req*,int) ;

__attribute__((used)) static void nvmet_execute_abort(struct nvmet_req *req)
{
 nvmet_set_result(req, 1);
 nvmet_req_complete(req, 0);
}
