
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_port {int orientation; } ;
typedef enum typec_orientation { ____Placeholder_typec_orientation } typec_orientation ;



enum typec_orientation typec_get_orientation(struct typec_port *port)
{
 return port->orientation;
}
