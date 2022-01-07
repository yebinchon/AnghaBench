
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ucsi_dp {int vdo_size; TYPE_3__* con; int work; int * vdo_data; int header; scalar_t__ initialized; int override; } ;
struct ucsi_control {int dummy; } ;
struct typec_altmode {int dev; } ;
typedef int cur ;
struct TYPE_8__ {TYPE_2__* ppm; } ;
struct TYPE_7__ {int lock; struct typec_altmode** port_altmode; TYPE_4__* ucsi; int num; } ;
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int version; } ;


 int CMDT_RSP_ACK ;
 int CMD_ENTER_MODE ;
 int EBUSY ;
 int EOPNOTSUPP ;
 int UCSI_CMD_GET_CURRENT_CAM (struct ucsi_control,int ) ;
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
 int ucsi_send_command (TYPE_4__*,struct ucsi_control*,int*,int) ;

__attribute__((used)) static int ucsi_displayport_enter(struct typec_altmode *alt)
{
 struct ucsi_dp *dp = typec_altmode_get_drvdata(alt);
 struct ucsi_control ctrl;
 u8 cur = 0;
 int ret;

 mutex_lock(&dp->con->lock);

 if (!dp->override && dp->initialized) {
  const struct typec_altmode *p = typec_altmode_get_partner(alt);

  dev_warn(&p->dev,
    "firmware doesn't support alternate mode overriding\n");
  mutex_unlock(&dp->con->lock);
  return -EOPNOTSUPP;
 }

 UCSI_CMD_GET_CURRENT_CAM(ctrl, dp->con->num);
 ret = ucsi_send_command(dp->con->ucsi, &ctrl, &cur, sizeof(cur));
 if (ret < 0) {
  if (dp->con->ucsi->ppm->data->version > 0x0100) {
   mutex_unlock(&dp->con->lock);
   return ret;
  }
  cur = 0xff;
 }

 if (cur != 0xff) {
  mutex_unlock(&dp->con->lock);
  if (dp->con->port_altmode[cur] == alt)
   return 0;
  return -EBUSY;
 }







 dp->header = VDO(USB_TYPEC_DP_SID, 1, CMD_ENTER_MODE);
 dp->header |= VDO_OPOS(USB_TYPEC_DP_MODE);
 dp->header |= VDO_CMDT(CMDT_RSP_ACK);

 dp->vdo_data = ((void*)0);
 dp->vdo_size = 1;

 schedule_work(&dp->work);

 mutex_unlock(&dp->con->lock);

 return 0;
}
