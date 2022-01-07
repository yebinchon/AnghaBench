
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvmet_req {TYPE_2__* cmd; } ;
struct TYPE_3__ {int attributes; } ;
struct TYPE_4__ {TYPE_1__ dsm; } ;





 int le32_to_cpu (int ) ;
 int nvmet_bdev_execute_discard (struct nvmet_req*) ;
 int nvmet_req_complete (struct nvmet_req*,int ) ;

__attribute__((used)) static void nvmet_bdev_execute_dsm(struct nvmet_req *req)
{
 switch (le32_to_cpu(req->cmd->dsm.attributes)) {
 case 130:
  nvmet_bdev_execute_discard(req);
  return;
 case 129:
 case 128:
 default:

  nvmet_req_complete(req, 0);
  return;
 }
}
