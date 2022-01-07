
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ucsi_connector {struct typec_altmode** partner_altmode; struct typec_altmode** port_altmode; } ;
struct typec_altmode {scalar_t__ svid; } ;




 scalar_t__ USB_TYPEC_DP_SID ;
 scalar_t__ USB_TYPEC_NVIDIA_VLINK_SID ;
 struct typec_altmode* typec_altmode_get_partner (struct typec_altmode*) ;
 int typec_unregister_altmode (struct typec_altmode*) ;
 int ucsi_displayport_remove_partner (void*) ;

__attribute__((used)) static void ucsi_unregister_altmodes(struct ucsi_connector *con, u8 recipient)
{
 const struct typec_altmode *pdev;
 struct typec_altmode **adev;
 int i = 0;

 switch (recipient) {
 case 129:
  adev = con->port_altmode;
  break;
 case 128:
  adev = con->partner_altmode;
  break;
 default:
  return;
 }

 while (adev[i]) {
  if (recipient == 128 &&
      (adev[i]->svid == USB_TYPEC_DP_SID ||
   adev[i]->svid == USB_TYPEC_NVIDIA_VLINK_SID)) {
   pdev = typec_altmode_get_partner(adev[i]);
   ucsi_displayport_remove_partner((void *)pdev);
  }
  typec_unregister_altmode(adev[i]);
  adev[i++] = ((void*)0);
 }
}
