
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct typec_port {int pwr_opmode; TYPE_1__ dev; } ;
struct typec_partner {int usb_pd; } ;
struct device {int kobj; } ;
typedef enum typec_pwr_opmode { ____Placeholder_typec_pwr_opmode } typec_pwr_opmode ;


 int KOBJ_CHANGE ;
 int TYPEC_PWR_MODE_PD ;
 struct device* device_find_child (TYPE_1__*,int *,int ) ;
 int kobject_uevent (int *,int ) ;
 int partner_match ;
 int put_device (struct device*) ;
 int sysfs_notify (int *,int *,char*) ;
 struct typec_partner* to_typec_partner (struct device*) ;

void typec_set_pwr_opmode(struct typec_port *port,
     enum typec_pwr_opmode opmode)
{
 struct device *partner_dev;

 if (port->pwr_opmode == opmode)
  return;

 port->pwr_opmode = opmode;
 sysfs_notify(&port->dev.kobj, ((void*)0), "power_operation_mode");
 kobject_uevent(&port->dev.kobj, KOBJ_CHANGE);

 partner_dev = device_find_child(&port->dev, ((void*)0), partner_match);
 if (partner_dev) {
  struct typec_partner *partner = to_typec_partner(partner_dev);

  if (opmode == TYPEC_PWR_MODE_PD && !partner->usb_pd) {
   partner->usb_pd = 1;
   sysfs_notify(&partner_dev->kobj, ((void*)0),
         "supports_usb_power_delivery");
  }
  put_device(partner_dev);
 }
}
