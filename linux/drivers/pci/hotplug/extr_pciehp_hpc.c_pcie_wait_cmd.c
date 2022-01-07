
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {unsigned long cmd_started; int slot_ctrl; int cmd_busy; int queue; } ;


 scalar_t__ NO_CMD_CMPL (struct controller*) ;
 int PCI_EXP_SLTCTL_CCIE ;
 int PCI_EXP_SLTCTL_HPIE ;
 int ctrl_info (struct controller*,char*,int,int ) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int pcie_poll_cmd (struct controller*,int ) ;
 scalar_t__ pciehp_poll_mode ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;
 int wait_event_timeout (int ,int,unsigned long) ;

__attribute__((used)) static void pcie_wait_cmd(struct controller *ctrl)
{
 unsigned int msecs = pciehp_poll_mode ? 2500 : 1000;
 unsigned long duration = msecs_to_jiffies(msecs);
 unsigned long cmd_timeout = ctrl->cmd_started + duration;
 unsigned long now, timeout;
 int rc;





 if (NO_CMD_CMPL(ctrl))
  return;

 if (!ctrl->cmd_busy)
  return;





 now = jiffies;
 if (time_before_eq(cmd_timeout, now))
  timeout = 1;
 else
  timeout = cmd_timeout - now;

 if (ctrl->slot_ctrl & PCI_EXP_SLTCTL_HPIE &&
     ctrl->slot_ctrl & PCI_EXP_SLTCTL_CCIE)
  rc = wait_event_timeout(ctrl->queue, !ctrl->cmd_busy, timeout);
 else
  rc = pcie_poll_cmd(ctrl, jiffies_to_msecs(timeout));

 if (!rc)
  ctrl_info(ctrl, "Timeout on hotplug command %#06x (issued %u msec ago)\n",
     ctrl->slot_ctrl,
     jiffies_to_msecs(jiffies - ctrl->cmd_started));
}
