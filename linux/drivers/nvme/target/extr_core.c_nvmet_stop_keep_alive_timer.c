
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ctrl {int ka_work; int cntlid; } ;


 int cancel_delayed_work_sync (int *) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void nvmet_stop_keep_alive_timer(struct nvmet_ctrl *ctrl)
{
 pr_debug("ctrl %d stop keep-alive\n", ctrl->cntlid);

 cancel_delayed_work_sync(&ctrl->ka_work);
}
