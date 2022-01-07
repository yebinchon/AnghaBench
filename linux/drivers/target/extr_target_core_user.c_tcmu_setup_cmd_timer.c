
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct tcmu_dev {int name; int commands; } ;
struct tcmu_cmd {int cmd_id; int deadline; struct tcmu_dev* tcmu_dev; } ;


 int GFP_NOWAIT ;
 unsigned int MSEC_PER_SEC ;
 int USHRT_MAX ;
 int idr_alloc (int *,struct tcmu_cmd*,int,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (struct timer_list*,int ) ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;
 int pr_debug (char*,int,int ,unsigned int) ;
 int pr_err (char*) ;
 int round_jiffies_up (scalar_t__) ;
 int timer_pending (struct timer_list*) ;

__attribute__((used)) static int tcmu_setup_cmd_timer(struct tcmu_cmd *tcmu_cmd, unsigned int tmo,
    struct timer_list *timer)
{
 struct tcmu_dev *udev = tcmu_cmd->tcmu_dev;
 int cmd_id;

 if (tcmu_cmd->cmd_id)
  goto setup_timer;

 cmd_id = idr_alloc(&udev->commands, tcmu_cmd, 1, USHRT_MAX, GFP_NOWAIT);
 if (cmd_id < 0) {
  pr_err("tcmu: Could not allocate cmd id.\n");
  return cmd_id;
 }
 tcmu_cmd->cmd_id = cmd_id;

 pr_debug("allocated cmd %u for dev %s tmo %lu\n", tcmu_cmd->cmd_id,
   udev->name, tmo / MSEC_PER_SEC);

setup_timer:
 if (!tmo)
  return 0;

 tcmu_cmd->deadline = round_jiffies_up(jiffies + msecs_to_jiffies(tmo));
 if (!timer_pending(timer))
  mod_timer(timer, tcmu_cmd->deadline);

 return 0;
}
