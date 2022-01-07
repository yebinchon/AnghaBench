
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ctrl {int kato; int ka_work; int cntlid; } ;


 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int nvmet_keep_alive_timer ;
 int pr_debug (char*,int ,int) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void nvmet_start_keep_alive_timer(struct nvmet_ctrl *ctrl)
{
 pr_debug("ctrl %d start keep-alive timer for %d secs\n",
  ctrl->cntlid, ctrl->kato);

 INIT_DELAYED_WORK(&ctrl->ka_work, nvmet_keep_alive_timer);
 schedule_delayed_work(&ctrl->ka_work, ctrl->kato * HZ);
}
