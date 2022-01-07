
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int accessory; int usb_pd; } ;
struct tcpm_port {int connected; TYPE_1__ partner_desc; int typec_port; int partner; int pd_capable; int partner_ident; } ;


 int TYPEC_ACCESSORY_AUDIO ;
 int TYPEC_ACCESSORY_DEBUG ;
 int TYPEC_ACCESSORY_NONE ;
 int memset (int *,int ,int) ;
 scalar_t__ tcpm_port_is_audio (struct tcpm_port*) ;
 scalar_t__ tcpm_port_is_debug (struct tcpm_port*) ;
 int typec_register_partner (int ,TYPE_1__*) ;

__attribute__((used)) static void tcpm_typec_connect(struct tcpm_port *port)
{
 if (!port->connected) {

  memset(&port->partner_ident, 0, sizeof(port->partner_ident));
  port->partner_desc.usb_pd = port->pd_capable;
  if (tcpm_port_is_debug(port))
   port->partner_desc.accessory = TYPEC_ACCESSORY_DEBUG;
  else if (tcpm_port_is_audio(port))
   port->partner_desc.accessory = TYPEC_ACCESSORY_AUDIO;
  else
   port->partner_desc.accessory = TYPEC_ACCESSORY_NONE;
  port->partner = typec_register_partner(port->typec_port,
             &port->partner_desc);
  port->connected = 1;
 }
}
