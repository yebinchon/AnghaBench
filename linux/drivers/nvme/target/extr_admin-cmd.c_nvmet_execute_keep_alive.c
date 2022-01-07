
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_req {TYPE_1__* sq; } ;
struct nvmet_ctrl {int kato; int ka_work; int cntlid; } ;
struct TYPE_2__ {struct nvmet_ctrl* ctrl; } ;


 int HZ ;
 int mod_delayed_work (int ,int *,int) ;
 int nvmet_req_complete (struct nvmet_req*,int ) ;
 int pr_debug (char*,int ,int) ;
 int system_wq ;

void nvmet_execute_keep_alive(struct nvmet_req *req)
{
 struct nvmet_ctrl *ctrl = req->sq->ctrl;

 pr_debug("ctrl %d update keep-alive timer for %d secs\n",
  ctrl->cntlid, ctrl->kato);

 mod_delayed_work(system_wq, &ctrl->ka_work, ctrl->kato * HZ);
 nvmet_req_complete(req, 0);
}
