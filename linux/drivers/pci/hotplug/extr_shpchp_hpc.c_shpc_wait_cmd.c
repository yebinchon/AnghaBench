
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int queue; } ;


 int EINTR ;
 int EIO ;
 int ctrl_err (struct controller*,char*) ;
 int ctrl_info (struct controller*,char*) ;
 scalar_t__ is_ctrl_busy (struct controller*) ;
 unsigned long msecs_to_jiffies (int) ;
 int shpc_poll_ctrl_busy (struct controller*) ;
 scalar_t__ shpchp_poll_mode ;
 int wait_event_interruptible_timeout (int ,int,unsigned long) ;

__attribute__((used)) static inline int shpc_wait_cmd(struct controller *ctrl)
{
 int retval = 0;
 unsigned long timeout = msecs_to_jiffies(1000);
 int rc;

 if (shpchp_poll_mode)
  rc = shpc_poll_ctrl_busy(ctrl);
 else
  rc = wait_event_interruptible_timeout(ctrl->queue,
      !is_ctrl_busy(ctrl), timeout);
 if (!rc && is_ctrl_busy(ctrl)) {
  retval = -EIO;
  ctrl_err(ctrl, "Command not completed in 1000 msec\n");
 } else if (rc < 0) {
  retval = -EINTR;
  ctrl_info(ctrl, "Command was interrupted by a signal\n");
 }

 return retval;
}
