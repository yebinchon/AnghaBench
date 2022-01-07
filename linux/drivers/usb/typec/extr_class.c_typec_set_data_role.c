
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct typec_port {int data_role; TYPE_1__ dev; } ;
typedef enum typec_data_role { ____Placeholder_typec_data_role } typec_data_role ;


 int KOBJ_CHANGE ;
 int kobject_uevent (int *,int ) ;
 int sysfs_notify (int *,int *,char*) ;

void typec_set_data_role(struct typec_port *port, enum typec_data_role role)
{
 if (port->data_role == role)
  return;

 port->data_role = role;
 sysfs_notify(&port->dev.kobj, ((void*)0), "data_role");
 kobject_uevent(&port->dev.kobj, KOBJ_CHANGE);
}
