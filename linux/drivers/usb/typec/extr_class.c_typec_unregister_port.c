
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_port {int dev; } ;


 int IS_ERR_OR_NULL (struct typec_port*) ;
 int device_unregister (int *) ;

void typec_unregister_port(struct typec_port *port)
{
 if (!IS_ERR_OR_NULL(port))
  device_unregister(&port->dev);
}
