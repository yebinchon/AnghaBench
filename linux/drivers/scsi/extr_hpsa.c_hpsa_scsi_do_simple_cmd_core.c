
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {TYPE_1__* pdev; } ;
struct CommandList {int * waiting; } ;
struct TYPE_2__ {int dev; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ETIMEDOUT ;
 int IO_OK ;
 unsigned long NO_TIMEOUT ;
 int __enqueue_cmd_and_start_io (struct ctlr_info*,struct CommandList*,int) ;
 int dev_warn (int *,char*) ;
 int msecs_to_jiffies (unsigned long) ;
 int wait ;
 int wait_for_completion_io (int *) ;
 int wait_for_completion_io_timeout (int *,int ) ;

__attribute__((used)) static int hpsa_scsi_do_simple_cmd_core(struct ctlr_info *h,
 struct CommandList *c, int reply_queue, unsigned long timeout_msecs)
{
 DECLARE_COMPLETION_ONSTACK(wait);

 c->waiting = &wait;
 __enqueue_cmd_and_start_io(h, c, reply_queue);
 if (timeout_msecs == NO_TIMEOUT) {

  wait_for_completion_io(&wait);
  return IO_OK;
 }
 if (!wait_for_completion_io_timeout(&wait,
     msecs_to_jiffies(timeout_msecs))) {
  dev_warn(&h->pdev->dev, "Command timed out.\n");
  return -ETIMEDOUT;
 }
 return IO_OK;
}
