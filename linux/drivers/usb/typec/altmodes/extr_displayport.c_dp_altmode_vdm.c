
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct typec_altmode {int dummy; } ;
struct TYPE_2__ {int conf; int status; } ;
struct dp_altmode {scalar_t__ state; int lock; int work; TYPE_1__ data; } ;
 scalar_t__ DP_STATE_IDLE ;
 scalar_t__ DP_STATE_UPDATE ;
 int EBUSY ;
 int PD_VDO_CMD (int const) ;
 int PD_VDO_CMDT (int const) ;
 int dp_altmode_configured (struct dp_altmode*) ;
 int dp_altmode_status_update (struct dp_altmode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 struct dp_altmode* typec_altmode_get_drvdata (struct typec_altmode*) ;

__attribute__((used)) static int dp_altmode_vdm(struct typec_altmode *alt,
     const u32 hdr, const u32 *vdo, int count)
{
 struct dp_altmode *dp = typec_altmode_get_drvdata(alt);
 int cmd_type = PD_VDO_CMDT(hdr);
 int cmd = PD_VDO_CMD(hdr);
 int ret = 0;

 mutex_lock(&dp->lock);

 if (dp->state != DP_STATE_IDLE) {
  ret = -EBUSY;
  goto err_unlock;
 }

 switch (cmd_type) {
 case 133:
  switch (cmd) {
  case 131:
   dp->state = DP_STATE_UPDATE;
   break;
  case 130:
   dp->data.status = 0;
   dp->data.conf = 0;
   break;
  case 128:
   dp->data.status = *vdo;
   ret = dp_altmode_status_update(dp);
   break;
  case 129:
   ret = dp_altmode_configured(dp);
   break;
  default:
   break;
  }
  break;
 case 132:
  switch (cmd) {
  case 129:
   dp->data.conf = 0;
   ret = dp_altmode_configured(dp);
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }

 if (dp->state != DP_STATE_IDLE)
  schedule_work(&dp->work);

err_unlock:
 mutex_unlock(&dp->lock);
 return ret;
}
