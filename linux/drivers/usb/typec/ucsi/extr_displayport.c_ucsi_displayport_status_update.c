
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int status; } ;
struct ucsi_dp {int vdo_size; TYPE_2__ data; int * vdo_data; TYPE_1__* alt; } ;
struct TYPE_3__ {int vdo; } ;


 int BIT (int ) ;
 int DP_CAP_CAPABILITY (int ) ;
 int DP_CAP_DFP_D_PIN_ASSIGN (int ) ;
 int DP_CAP_UFP_D ;
 int DP_CAP_UFP_D_PIN_ASSIGN (int ) ;
 int DP_PIN_ASSIGN_D ;
 int DP_STATUS_CON_DFP_D ;
 int DP_STATUS_CON_UFP_D ;
 int DP_STATUS_ENABLED ;
 int DP_STATUS_PREFER_MULTI_FUNC ;

__attribute__((used)) static int ucsi_displayport_status_update(struct ucsi_dp *dp)
{
 u32 cap = dp->alt->vdo;

 dp->data.status = DP_STATUS_ENABLED;





 if (DP_CAP_CAPABILITY(cap) & DP_CAP_UFP_D) {
  dp->data.status |= DP_STATUS_CON_UFP_D;

  if (DP_CAP_UFP_D_PIN_ASSIGN(cap) & BIT(DP_PIN_ASSIGN_D))
   dp->data.status |= DP_STATUS_PREFER_MULTI_FUNC;
 } else {
  dp->data.status |= DP_STATUS_CON_DFP_D;

  if (DP_CAP_DFP_D_PIN_ASSIGN(cap) & BIT(DP_PIN_ASSIGN_D))
   dp->data.status |= DP_STATUS_PREFER_MULTI_FUNC;
 }

 dp->vdo_data = &dp->data.status;
 dp->vdo_size = 2;

 return 0;
}
