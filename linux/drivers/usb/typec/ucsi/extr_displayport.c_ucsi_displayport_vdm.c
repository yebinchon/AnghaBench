
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int conf; } ;
struct ucsi_dp {int initialized; TYPE_2__* con; int work; int header; TYPE_1__ data; int override; } ;
struct typec_altmode {int dev; } ;
struct TYPE_4__ {int lock; } ;



 int CMDT_RSP_ACK ;
 int CMDT_RSP_NAK ;


 int EOPNOTSUPP ;
 int PD_VDO_CMD (int ) ;
 int PD_VDO_CMDT (int ) ;
 int USB_TYPEC_DP_MODE ;
 int USB_TYPEC_DP_SID ;
 int VDO (int ,int,int) ;
 int VDO_CMDT (int ) ;
 int VDO_OPOS (int ) ;
 int dev_warn (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 struct ucsi_dp* typec_altmode_get_drvdata (struct typec_altmode*) ;
 struct typec_altmode* typec_altmode_get_partner (struct typec_altmode*) ;
 int ucsi_altmode_update_active (TYPE_2__*) ;
 int ucsi_displayport_configure (struct ucsi_dp*) ;
 int ucsi_displayport_status_update (struct ucsi_dp*) ;

__attribute__((used)) static int ucsi_displayport_vdm(struct typec_altmode *alt,
    u32 header, const u32 *data, int count)
{
 struct ucsi_dp *dp = typec_altmode_get_drvdata(alt);
 int cmd_type = PD_VDO_CMDT(header);
 int cmd = PD_VDO_CMD(header);

 mutex_lock(&dp->con->lock);

 if (!dp->override && dp->initialized) {
  const struct typec_altmode *p = typec_altmode_get_partner(alt);

  dev_warn(&p->dev,
    "firmware doesn't support alternate mode overriding\n");
  mutex_unlock(&dp->con->lock);
  return -EOPNOTSUPP;
 }

 switch (cmd_type) {
 case 130:
  dp->header = VDO(USB_TYPEC_DP_SID, 1, cmd);
  dp->header |= VDO_OPOS(USB_TYPEC_DP_MODE);

  switch (cmd) {
  case 128:
   if (ucsi_displayport_status_update(dp))
    dp->header |= VDO_CMDT(CMDT_RSP_NAK);
   else
    dp->header |= VDO_CMDT(CMDT_RSP_ACK);
   break;
  case 129:
   dp->data.conf = *data;
   if (ucsi_displayport_configure(dp)) {
    dp->header |= VDO_CMDT(CMDT_RSP_NAK);
   } else {
    dp->header |= VDO_CMDT(CMDT_RSP_ACK);
    if (dp->initialized)
     ucsi_altmode_update_active(dp->con);
    else
     dp->initialized = 1;
   }
   break;
  default:
   dp->header |= VDO_CMDT(CMDT_RSP_ACK);
   break;
  }

  schedule_work(&dp->work);
  break;
 default:
  break;
 }

 mutex_unlock(&dp->con->lock);

 return 0;
}
