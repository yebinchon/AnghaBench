
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucsi_control {int dummy; } ;
struct TYPE_2__ {int pwr_dir; scalar_t__ pwr_op_mode; } ;
struct ucsi_connector {int lock; TYPE_1__ status; int complete; int partner; } ;
struct typec_capability {int dummy; } ;
typedef enum typec_role { ____Placeholder_typec_role } typec_role ;


 int ENOTCONN ;
 int EPROTO ;
 int ETIMEDOUT ;
 int UCSI_CMD_SET_PDR (struct ucsi_control,struct ucsi_connector*,int) ;
 scalar_t__ UCSI_CONSTAT_PWR_OPMODE_PD ;
 int UCSI_SWAP_TIMEOUT_MS ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ucsi_connector* to_ucsi_connector (struct typec_capability const*) ;
 int ucsi_reset_connector (struct ucsi_connector*,int) ;
 int ucsi_role_cmd (struct ucsi_connector*,struct ucsi_control*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int
ucsi_pr_swap(const struct typec_capability *cap, enum typec_role role)
{
 struct ucsi_connector *con = to_ucsi_connector(cap);
 struct ucsi_control ctrl;
 int ret = 0;

 mutex_lock(&con->lock);

 if (!con->partner) {
  ret = -ENOTCONN;
  goto out_unlock;
 }

 if (con->status.pwr_dir == role)
  goto out_unlock;

 UCSI_CMD_SET_PDR(ctrl, con, role);
 ret = ucsi_role_cmd(con, &ctrl);
 if (ret < 0)
  goto out_unlock;

 if (!wait_for_completion_timeout(&con->complete,
    msecs_to_jiffies(UCSI_SWAP_TIMEOUT_MS))) {
  ret = -ETIMEDOUT;
  goto out_unlock;
 }


 if (con->status.pwr_op_mode != UCSI_CONSTAT_PWR_OPMODE_PD) {
  ucsi_reset_connector(con, 1);
  ret = -EPROTO;
 }

out_unlock:
 mutex_unlock(&con->lock);

 return ret;
}
