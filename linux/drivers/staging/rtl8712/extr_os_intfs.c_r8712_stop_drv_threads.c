
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct completion {int dummy; } ;
struct TYPE_2__ {int cmd_seq; int cmd_queue_comp; struct completion terminate_cmdthread_comp; } ;
struct _adapter {TYPE_1__ cmdpriv; scalar_t__ cmd_thread; } ;


 int complete (int *) ;
 int wait_for_completion_interruptible (struct completion*) ;

void r8712_stop_drv_threads(struct _adapter *padapter)
{
 struct completion *completion =
  &padapter->cmdpriv.terminate_cmdthread_comp;


 complete(&padapter->cmdpriv.cmd_queue_comp);
 if (padapter->cmd_thread)
  wait_for_completion_interruptible(completion);
 padapter->cmdpriv.cmd_seq = 1;
}
