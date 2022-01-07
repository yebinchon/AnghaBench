
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ci_hdrc_cable {int changed; int enabled; int edev; } ;
struct ci_hdrc {scalar_t__ role_switch; TYPE_1__* platdata; } ;
struct TYPE_2__ {struct ci_hdrc_cable id_extcon; struct ci_hdrc_cable vbus_extcon; } ;


 int IS_ERR (int ) ;
 int OP_OTGSC ;
 int OTGSC_BSVIE ;
 int OTGSC_BSVIS ;
 int OTGSC_IDIE ;
 int OTGSC_IDIS ;
 int OTGSC_INT_STATUS_BITS ;
 int hw_write (struct ci_hdrc*,int ,int,int) ;

void hw_write_otgsc(struct ci_hdrc *ci, u32 mask, u32 data)
{
 struct ci_hdrc_cable *cable;

 cable = &ci->platdata->vbus_extcon;
 if (!IS_ERR(cable->edev) || ci->role_switch) {
  if (data & mask & OTGSC_BSVIS)
   cable->changed = 0;


  if (data & mask & OTGSC_BSVIE) {
   cable->enabled = 1;
   data &= ~OTGSC_BSVIE;
  } else if (mask & OTGSC_BSVIE) {
   cable->enabled = 0;
  }
 }

 cable = &ci->platdata->id_extcon;
 if (!IS_ERR(cable->edev) || ci->role_switch) {
  if (data & mask & OTGSC_IDIS)
   cable->changed = 0;


  if (data & mask & OTGSC_IDIE) {
   cable->enabled = 1;
   data &= ~OTGSC_IDIE;
  } else if (mask & OTGSC_IDIE) {
   cable->enabled = 0;
  }
 }

 hw_write(ci, OP_OTGSC, mask | OTGSC_INT_STATUS_BITS, data);
}
