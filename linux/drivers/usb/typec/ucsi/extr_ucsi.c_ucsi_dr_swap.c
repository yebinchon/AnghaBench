
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucsi_control {int dummy; } ;
struct TYPE_2__ {scalar_t__ partner_type; } ;
struct ucsi_connector {int lock; int complete; TYPE_1__ status; int partner; } ;
struct typec_capability {int dummy; } ;
typedef enum typec_data_role { ____Placeholder_typec_data_role } typec_data_role ;


 int ENOTCONN ;
 int ETIMEDOUT ;
 int TYPEC_DEVICE ;
 int TYPEC_HOST ;
 int UCSI_CMD_SET_UOR (struct ucsi_control,struct ucsi_connector*,int) ;
 scalar_t__ UCSI_CONSTAT_PARTNER_TYPE_DFP ;
 scalar_t__ UCSI_CONSTAT_PARTNER_TYPE_UFP ;
 int UCSI_SWAP_TIMEOUT_MS ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ucsi_connector* to_ucsi_connector (struct typec_capability const*) ;
 int ucsi_role_cmd (struct ucsi_connector*,struct ucsi_control*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int
ucsi_dr_swap(const struct typec_capability *cap, enum typec_data_role role)
{
 struct ucsi_connector *con = to_ucsi_connector(cap);
 struct ucsi_control ctrl;
 int ret = 0;

 mutex_lock(&con->lock);

 if (!con->partner) {
  ret = -ENOTCONN;
  goto out_unlock;
 }

 if ((con->status.partner_type == UCSI_CONSTAT_PARTNER_TYPE_DFP &&
      role == TYPEC_DEVICE) ||
     (con->status.partner_type == UCSI_CONSTAT_PARTNER_TYPE_UFP &&
      role == TYPEC_HOST))
  goto out_unlock;

 UCSI_CMD_SET_UOR(ctrl, con, role);
 ret = ucsi_role_cmd(con, &ctrl);
 if (ret < 0)
  goto out_unlock;

 if (!wait_for_completion_timeout(&con->complete,
     msecs_to_jiffies(UCSI_SWAP_TIMEOUT_MS)))
  ret = -ETIMEDOUT;

out_unlock:
 mutex_unlock(&con->lock);

 return ret < 0 ? ret : 0;
}
