
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_request {scalar_t__ num_cmds; scalar_t__ state; int cmds; } ;
struct rsc_drv {int dummy; } ;


 int EINVAL ;
 scalar_t__ MAX_RPMH_PAYLOAD ;
 scalar_t__ RPMH_ACTIVE_ONLY_STATE ;
 int pr_err (char*) ;
 int tcs_ctrl_write (struct rsc_drv*,struct tcs_request const*) ;

int rpmh_rsc_write_ctrl_data(struct rsc_drv *drv, const struct tcs_request *msg)
{
 if (!msg || !msg->cmds || !msg->num_cmds ||
     msg->num_cmds > MAX_RPMH_PAYLOAD) {
  pr_err("Payload error\n");
  return -EINVAL;
 }


 if (msg->state == RPMH_ACTIVE_ONLY_STATE)
  return -EINVAL;

 return tcs_ctrl_write(drv, msg);
}
