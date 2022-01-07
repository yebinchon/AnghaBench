
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_req {TYPE_1__* sq; } ;
struct nvmet_ctrl {scalar_t__ nr_async_event_cmds; int async_event_work; int lock; struct nvmet_req** async_event_cmds; } ;
struct TYPE_2__ {struct nvmet_ctrl* ctrl; } ;


 scalar_t__ NVMET_ASYNC_EVENTS ;
 int NVME_SC_ASYNC_LIMIT ;
 int NVME_SC_DNR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmet_req_complete (struct nvmet_req*,int) ;
 int schedule_work (int *) ;

void nvmet_execute_async_event(struct nvmet_req *req)
{
 struct nvmet_ctrl *ctrl = req->sq->ctrl;

 mutex_lock(&ctrl->lock);
 if (ctrl->nr_async_event_cmds >= NVMET_ASYNC_EVENTS) {
  mutex_unlock(&ctrl->lock);
  nvmet_req_complete(req, NVME_SC_ASYNC_LIMIT | NVME_SC_DNR);
  return;
 }
 ctrl->async_event_cmds[ctrl->nr_async_event_cmds++] = req;
 mutex_unlock(&ctrl->lock);

 schedule_work(&ctrl->async_event_work);
}
