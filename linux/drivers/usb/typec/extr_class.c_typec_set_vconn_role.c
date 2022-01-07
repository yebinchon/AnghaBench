
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct typec_port {int vconn_role; TYPE_1__ dev; } ;
typedef enum typec_role { ____Placeholder_typec_role } typec_role ;


 int KOBJ_CHANGE ;
 int kobject_uevent (int *,int ) ;
 int sysfs_notify (int *,int *,char*) ;

void typec_set_vconn_role(struct typec_port *port, enum typec_role role)
{
 if (port->vconn_role == role)
  return;

 port->vconn_role = role;
 sysfs_notify(&port->dev.kobj, ((void*)0), "vconn_source");
 kobject_uevent(&port->dev.kobj, KOBJ_CHANGE);
}
