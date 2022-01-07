
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_altmode {int dummy; } ;
struct pd_mode_data {int altmodes; TYPE_1__* altmode_desc; } ;
struct tcpm_port {struct typec_altmode** partner_altmode; int partner; struct pd_mode_data mode_data; } ;
struct TYPE_2__ {int svid; } ;


 int tcpm_log (struct tcpm_port*,char*,int ) ;
 struct typec_altmode* typec_partner_register_altmode (int ,TYPE_1__*) ;

__attribute__((used)) static void tcpm_register_partner_altmodes(struct tcpm_port *port)
{
 struct pd_mode_data *modep = &port->mode_data;
 struct typec_altmode *altmode;
 int i;

 for (i = 0; i < modep->altmodes; i++) {
  altmode = typec_partner_register_altmode(port->partner,
      &modep->altmode_desc[i]);
  if (!altmode)
   tcpm_log(port, "Failed to register partner SVID 0x%04x",
     modep->altmode_desc[i].svid);
  port->partner_altmode[i] = altmode;
 }
}
