
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int status; int conf; } ;
struct dp_altmode {TYPE_3__ data; TYPE_2__* port; TYPE_1__* alt; } ;
struct TYPE_5__ {int vdo; } ;
struct TYPE_4__ {int vdo; } ;


 int DP_CAP_DFP_D_PIN_ASSIGN (int ) ;
 int DP_CAP_UFP_D_PIN_ASSIGN (int ) ;
 int DP_CONF_GET_PIN_ASSIGN (int ) ;
 int DP_CONF_SET_PIN_ASSIGN (int) ;
 int DP_CONF_SIGNALING_DP ;
 int DP_CONF_UFP_U_AS_DFP_D ;
 int DP_CONF_UFP_U_AS_UFP_D ;
 int DP_PIN_ASSIGN_DP_ONLY_MASK ;
 int DP_PIN_ASSIGN_MULTI_FUNC_MASK ;




 int DP_STATUS_PREFER_MULTI_FUNC ;
 int EINVAL ;

__attribute__((used)) static int dp_altmode_configure(struct dp_altmode *dp, u8 con)
{
 u32 conf = DP_CONF_SIGNALING_DP;
 u8 pin_assign = 0;

 switch (con) {
 case 129:
  return 0;
 case 130:
  conf |= DP_CONF_UFP_U_AS_DFP_D;
  pin_assign = DP_CAP_UFP_D_PIN_ASSIGN(dp->alt->vdo) &
        DP_CAP_DFP_D_PIN_ASSIGN(dp->port->vdo);
  break;
 case 128:
 case 131:
  conf |= DP_CONF_UFP_U_AS_UFP_D;
  pin_assign = DP_CAP_DFP_D_PIN_ASSIGN(dp->alt->vdo) &
        DP_CAP_UFP_D_PIN_ASSIGN(dp->port->vdo);
  break;
 default:
  break;
 }


 if (!DP_CONF_GET_PIN_ASSIGN(dp->data.conf)) {

  if (dp->data.status & DP_STATUS_PREFER_MULTI_FUNC &&
      pin_assign & DP_PIN_ASSIGN_MULTI_FUNC_MASK)
   pin_assign &= DP_PIN_ASSIGN_MULTI_FUNC_MASK;
  else if (pin_assign & DP_PIN_ASSIGN_DP_ONLY_MASK)
   pin_assign &= DP_PIN_ASSIGN_DP_ONLY_MASK;

  if (!pin_assign)
   return -EINVAL;

  conf |= DP_CONF_SET_PIN_ASSIGN(pin_assign);
 }

 dp->data.conf = conf;

 return 0;
}
