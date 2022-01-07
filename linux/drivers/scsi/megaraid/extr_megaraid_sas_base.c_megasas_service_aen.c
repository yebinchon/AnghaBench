
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {scalar_t__ unload; int issuepend_done; struct megasas_aen_event* ev; TYPE_1__* pdev; int * aen_cmd; } ;
struct megasas_cmd {scalar_t__ abort_aen; } ;
struct megasas_aen_event {int hotplug_work; struct megasas_instance* instance; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int POLL_IN ;
 int SIGIO ;
 int dev_err (int *,char*) ;
 int kill_fasync (int *,int ,int ) ;
 struct megasas_aen_event* kzalloc (int,int ) ;
 int megasas_aen_polling ;
 int megasas_async_queue ;
 int megasas_poll_wait ;
 int megasas_poll_wait_aen ;
 int megasas_return_cmd (struct megasas_instance*,struct megasas_cmd*) ;
 int poll_aen_lock ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void
megasas_service_aen(struct megasas_instance *instance, struct megasas_cmd *cmd)
{
 unsigned long flags;




 if ((!cmd->abort_aen) && (instance->unload == 0)) {
  spin_lock_irqsave(&poll_aen_lock, flags);
  megasas_poll_wait_aen = 1;
  spin_unlock_irqrestore(&poll_aen_lock, flags);
  wake_up(&megasas_poll_wait);
  kill_fasync(&megasas_async_queue, SIGIO, POLL_IN);
 }
 else
  cmd->abort_aen = 0;

 instance->aen_cmd = ((void*)0);

 megasas_return_cmd(instance, cmd);

 if ((instance->unload == 0) &&
  ((instance->issuepend_done == 1))) {
  struct megasas_aen_event *ev;

  ev = kzalloc(sizeof(*ev), GFP_ATOMIC);
  if (!ev) {
   dev_err(&instance->pdev->dev, "megasas_service_aen: out of memory\n");
  } else {
   ev->instance = instance;
   instance->ev = ev;
   INIT_DELAYED_WORK(&ev->hotplug_work,
       megasas_aen_polling);
   schedule_delayed_work(&ev->hotplug_work, 0);
  }
 }
}
