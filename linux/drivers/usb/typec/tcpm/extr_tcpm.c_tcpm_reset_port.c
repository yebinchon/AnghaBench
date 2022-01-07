
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int supported; } ;
struct tcpm_port {int attached; int pd_capable; int rx_msgid; int psy; int usb_type; scalar_t__ try_snk_count; scalar_t__ try_src_count; TYPE_2__* tcpc; TYPE_1__ pps_data; } ;
struct TYPE_4__ {int (* set_pd_rx ) (TYPE_2__*,int) ;} ;


 int POWER_SUPPLY_USB_TYPE_C ;
 int TYPEC_ORIENTATION_NONE ;
 int TYPEC_POLARITY_CC1 ;
 int TYPEC_STATE_SAFE ;
 int USB_ROLE_NONE ;
 int power_supply_changed (int ) ;
 int stub1 (TYPE_2__*,int) ;
 int tcpm_init_vbus (struct tcpm_port*) ;
 int tcpm_init_vconn (struct tcpm_port*) ;
 int tcpm_mux_set (struct tcpm_port*,int ,int ,int ) ;
 int tcpm_set_attached_state (struct tcpm_port*,int) ;
 int tcpm_set_current_limit (struct tcpm_port*,int ,int ) ;
 int tcpm_set_polarity (struct tcpm_port*,int ) ;
 int tcpm_typec_disconnect (struct tcpm_port*) ;
 int tcpm_unregister_altmodes (struct tcpm_port*) ;

__attribute__((used)) static void tcpm_reset_port(struct tcpm_port *port)
{
 tcpm_unregister_altmodes(port);
 tcpm_typec_disconnect(port);
 port->attached = 0;
 port->pd_capable = 0;
 port->pps_data.supported = 0;





 port->rx_msgid = -1;

 port->tcpc->set_pd_rx(port->tcpc, 0);
 tcpm_init_vbus(port);
 tcpm_init_vconn(port);
 tcpm_set_current_limit(port, 0, 0);
 tcpm_set_polarity(port, TYPEC_POLARITY_CC1);
 tcpm_mux_set(port, TYPEC_STATE_SAFE, USB_ROLE_NONE,
       TYPEC_ORIENTATION_NONE);
 tcpm_set_attached_state(port, 0);
 port->try_src_count = 0;
 port->try_snk_count = 0;
 port->usb_type = POWER_SUPPLY_USB_TYPE_C;

 power_supply_changed(port->psy);
}
