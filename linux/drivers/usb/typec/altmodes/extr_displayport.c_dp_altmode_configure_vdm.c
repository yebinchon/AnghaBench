
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int conf; } ;
struct dp_altmode {TYPE_3__ data; TYPE_1__* alt; } ;
struct TYPE_4__ {int dev; } ;


 int DP_CMD_CONFIGURE ;
 scalar_t__ DP_CONF_GET_PIN_ASSIGN (int ) ;
 int DP_HEADER (struct dp_altmode*,int ) ;
 int TYPEC_STATE_SAFE ;
 int TYPEC_STATE_USB ;
 int dev_err (int *,char*) ;
 int dp_altmode_notify (struct dp_altmode*) ;
 int typec_altmode_notify (TYPE_1__*,int ,TYPE_3__*) ;
 int typec_altmode_vdm (TYPE_1__*,int ,int *,int) ;

__attribute__((used)) static int dp_altmode_configure_vdm(struct dp_altmode *dp, u32 conf)
{
 u32 header = DP_HEADER(dp, DP_CMD_CONFIGURE);
 int ret;

 ret = typec_altmode_notify(dp->alt, TYPEC_STATE_SAFE, &dp->data);
 if (ret) {
  dev_err(&dp->alt->dev,
   "unable to put to connector to safe mode\n");
  return ret;
 }

 ret = typec_altmode_vdm(dp->alt, header, &conf, 2);
 if (ret) {
  if (DP_CONF_GET_PIN_ASSIGN(dp->data.conf))
   dp_altmode_notify(dp);
  else
   typec_altmode_notify(dp->alt, TYPEC_STATE_USB,
          &dp->data);
 }

 return ret;
}
