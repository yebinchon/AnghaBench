
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucsi_dp {int vdo_size; TYPE_1__* con; int work; int * vdo_data; int header; int offset; int override; } ;
struct ucsi_control {int raw_cmd; } ;
struct typec_altmode {int dev; } ;
struct TYPE_2__ {int lock; int ucsi; int num; } ;


 int CMDT_RSP_ACK ;
 int CMD_EXIT_MODE ;
 int EOPNOTSUPP ;
 int UCSI_CMD_SET_NEW_CAM (int ,int ,int ,int ) ;
 int USB_TYPEC_DP_MODE ;
 int USB_TYPEC_DP_SID ;
 int VDO (int ,int,int ) ;
 int VDO_CMDT (int ) ;
 int VDO_OPOS (int ) ;
 int dev_warn (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 struct ucsi_dp* typec_altmode_get_drvdata (struct typec_altmode*) ;
 struct typec_altmode* typec_altmode_get_partner (struct typec_altmode*) ;
 int ucsi_send_command (int ,struct ucsi_control*,int *,int ) ;

__attribute__((used)) static int ucsi_displayport_exit(struct typec_altmode *alt)
{
 struct ucsi_dp *dp = typec_altmode_get_drvdata(alt);
 struct ucsi_control ctrl;
 int ret = 0;

 mutex_lock(&dp->con->lock);

 if (!dp->override) {
  const struct typec_altmode *p = typec_altmode_get_partner(alt);

  dev_warn(&p->dev,
    "firmware doesn't support alternate mode overriding\n");
  ret = -EOPNOTSUPP;
  goto out_unlock;
 }

 ctrl.raw_cmd = UCSI_CMD_SET_NEW_CAM(dp->con->num, 0, dp->offset, 0);
 ret = ucsi_send_command(dp->con->ucsi, &ctrl, ((void*)0), 0);
 if (ret < 0)
  goto out_unlock;

 dp->header = VDO(USB_TYPEC_DP_SID, 1, CMD_EXIT_MODE);
 dp->header |= VDO_OPOS(USB_TYPEC_DP_MODE);
 dp->header |= VDO_CMDT(CMDT_RSP_ACK);

 dp->vdo_data = ((void*)0);
 dp->vdo_size = 1;

 schedule_work(&dp->work);

out_unlock:
 mutex_unlock(&dp->con->lock);

 return ret;
}
