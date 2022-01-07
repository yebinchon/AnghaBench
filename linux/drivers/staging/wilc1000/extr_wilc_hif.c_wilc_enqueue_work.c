
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct host_if_msg {int work; TYPE_1__* vif; int fn; } ;
struct TYPE_4__ {int hif_workqueue; } ;
struct TYPE_3__ {TYPE_2__* wilc; } ;


 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int wilc_enqueue_work(struct host_if_msg *msg)
{
 INIT_WORK(&msg->work, msg->fn);

 if (!msg->vif || !msg->vif->wilc || !msg->vif->wilc->hif_workqueue)
  return -EINVAL;

 if (!queue_work(msg->vif->wilc->hif_workqueue, &msg->work))
  return -EINVAL;

 return 0;
}
