
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int typec_port; scalar_t__ role_sw; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;
typedef enum typec_orientation { ____Placeholder_typec_orientation } typec_orientation ;


 int tcpm_log (struct tcpm_port*,char*,int,int,int) ;
 int typec_set_mode (int ,int) ;
 int typec_set_orientation (int ,int) ;
 int usb_role_switch_set_role (scalar_t__,int) ;

__attribute__((used)) static int tcpm_mux_set(struct tcpm_port *port, int state,
   enum usb_role usb_role,
   enum typec_orientation orientation)
{
 int ret;

 tcpm_log(port, "Requesting mux state %d, usb-role %d, orientation %d",
   state, usb_role, orientation);

 ret = typec_set_orientation(port->typec_port, orientation);
 if (ret)
  return ret;

 if (port->role_sw) {
  ret = usb_role_switch_set_role(port->role_sw, usb_role);
  if (ret)
   return ret;
 }

 return typec_set_mode(port->typec_port, state);
}
