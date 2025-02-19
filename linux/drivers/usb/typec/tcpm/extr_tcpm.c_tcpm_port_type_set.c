
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_capability {int dummy; } ;
struct tcpm_port {int port_type; scalar_t__ pwr_role; scalar_t__ data_role; int lock; int connected; } ;
typedef enum typec_port_type { ____Placeholder_typec_port_type } typec_port_type ;


 int PORT_RESET ;
 scalar_t__ TYPEC_DEVICE ;
 scalar_t__ TYPEC_HOST ;
 int TYPEC_PORT_SNK ;
 int TYPEC_PORT_SRC ;
 scalar_t__ TYPEC_SINK ;
 scalar_t__ TYPEC_SOURCE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;
 struct tcpm_port* typec_cap_to_tcpm (struct typec_capability const*) ;

__attribute__((used)) static int tcpm_port_type_set(const struct typec_capability *cap,
         enum typec_port_type type)
{
 struct tcpm_port *port = typec_cap_to_tcpm(cap);

 mutex_lock(&port->lock);
 if (type == port->port_type)
  goto port_unlock;

 port->port_type = type;

 if (!port->connected) {
  tcpm_set_state(port, PORT_RESET, 0);
 } else if (type == TYPEC_PORT_SNK) {
  if (!(port->pwr_role == TYPEC_SINK &&
        port->data_role == TYPEC_DEVICE))
   tcpm_set_state(port, PORT_RESET, 0);
 } else if (type == TYPEC_PORT_SRC) {
  if (!(port->pwr_role == TYPEC_SOURCE &&
        port->data_role == TYPEC_HOST))
   tcpm_set_state(port, PORT_RESET, 0);
 }

port_unlock:
 mutex_unlock(&port->lock);
 return 0;
}
