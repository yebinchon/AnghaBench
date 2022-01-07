
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_mode_data {int altmodes; } ;
struct tcpm_port {int ** partner_altmode; struct pd_mode_data mode_data; } ;


 int memset (struct pd_mode_data*,int ,int) ;
 int typec_unregister_altmode (int *) ;

__attribute__((used)) static void tcpm_unregister_altmodes(struct tcpm_port *port)
{
 struct pd_mode_data *modep = &port->mode_data;
 int i;

 for (i = 0; i < modep->altmodes; i++) {
  typec_unregister_altmode(port->partner_altmode[i]);
  port->partner_altmode[i] = ((void*)0);
 }

 memset(modep, 0, sizeof(*modep));
}
