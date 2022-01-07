
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpc_dev {int pd_transmit; int start_toggling; int set_roles; int set_pd_rx; int set_vbus; int set_vconn; int set_polarity; int get_cc; int set_cc; int get_current_limit; int get_vbus; int init; } ;


 int tcpm_get_cc ;
 int tcpm_get_current_limit ;
 int tcpm_get_vbus ;
 int tcpm_init ;
 int tcpm_pd_transmit ;
 int tcpm_set_cc ;
 int tcpm_set_pd_rx ;
 int tcpm_set_polarity ;
 int tcpm_set_roles ;
 int tcpm_set_vbus ;
 int tcpm_set_vconn ;
 int tcpm_start_toggling ;

__attribute__((used)) static void init_tcpc_dev(struct tcpc_dev *fusb302_tcpc_dev)
{
 fusb302_tcpc_dev->init = tcpm_init;
 fusb302_tcpc_dev->get_vbus = tcpm_get_vbus;
 fusb302_tcpc_dev->get_current_limit = tcpm_get_current_limit;
 fusb302_tcpc_dev->set_cc = tcpm_set_cc;
 fusb302_tcpc_dev->get_cc = tcpm_get_cc;
 fusb302_tcpc_dev->set_polarity = tcpm_set_polarity;
 fusb302_tcpc_dev->set_vconn = tcpm_set_vconn;
 fusb302_tcpc_dev->set_vbus = tcpm_set_vbus;
 fusb302_tcpc_dev->set_pd_rx = tcpm_set_pd_rx;
 fusb302_tcpc_dev->set_roles = tcpm_set_roles;
 fusb302_tcpc_dev->start_toggling = tcpm_start_toggling;
 fusb302_tcpc_dev->pd_transmit = tcpm_pd_transmit;
}
