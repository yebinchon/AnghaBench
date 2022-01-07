
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attr; } ;
struct usbport_trig_port {struct usbport_trig_port* port_name; TYPE_2__ attr; int list; } ;
struct usbport_trig_data {struct led_classdev* led_cdev; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int kobj; } ;


 int kfree (struct usbport_trig_port*) ;
 int list_del (int *) ;
 TYPE_3__ ports_group ;
 int sysfs_remove_file_from_group (int *,int *,int ) ;

__attribute__((used)) static void usbport_trig_remove_port(struct usbport_trig_data *usbport_data,
         struct usbport_trig_port *port)
{
 struct led_classdev *led_cdev = usbport_data->led_cdev;

 list_del(&port->list);
 sysfs_remove_file_from_group(&led_cdev->dev->kobj, &port->attr.attr,
         ports_group.name);
 kfree(port->port_name);
 kfree(port);
}
