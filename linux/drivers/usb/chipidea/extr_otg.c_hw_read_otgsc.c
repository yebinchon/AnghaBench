
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ci_hdrc_cable {scalar_t__ enabled; scalar_t__ connected; scalar_t__ changed; int edev; } ;
struct ci_hdrc {scalar_t__ role_switch; TYPE_1__* platdata; } ;
struct TYPE_2__ {struct ci_hdrc_cable id_extcon; struct ci_hdrc_cable vbus_extcon; } ;


 int IS_ERR (int ) ;
 int OP_OTGSC ;
 int OTGSC_BSV ;
 int OTGSC_BSVIE ;
 int OTGSC_BSVIS ;
 int OTGSC_ID ;
 int OTGSC_IDIE ;
 int OTGSC_IDIS ;
 int hw_read (struct ci_hdrc*,int ,int) ;

u32 hw_read_otgsc(struct ci_hdrc *ci, u32 mask)
{
 struct ci_hdrc_cable *cable;
 u32 val = hw_read(ci, OP_OTGSC, mask);





 cable = &ci->platdata->vbus_extcon;
 if (!IS_ERR(cable->edev) || ci->role_switch) {
  if (cable->changed)
   val |= OTGSC_BSVIS;
  else
   val &= ~OTGSC_BSVIS;

  if (cable->connected)
   val |= OTGSC_BSV;
  else
   val &= ~OTGSC_BSV;

  if (cable->enabled)
   val |= OTGSC_BSVIE;
  else
   val &= ~OTGSC_BSVIE;
 }

 cable = &ci->platdata->id_extcon;
 if (!IS_ERR(cable->edev) || ci->role_switch) {
  if (cable->changed)
   val |= OTGSC_IDIS;
  else
   val &= ~OTGSC_IDIS;

  if (cable->connected)
   val &= ~OTGSC_ID;
  else
   val |= OTGSC_ID;

  if (cable->enabled)
   val |= OTGSC_IDIE;
  else
   val &= ~OTGSC_IDIE;
 }

 return val & mask;
}
