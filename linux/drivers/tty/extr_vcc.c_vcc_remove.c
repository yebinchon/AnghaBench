
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;
struct vio_dev {TYPE_2__ dev; } ;
struct TYPE_4__ {struct vcc_port* name; int timer; } ;
struct vcc_port {int removed; struct vcc_port* domain; TYPE_1__ vio; int index; scalar_t__ tty; int tx_timer; int rx_timer; } ;


 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int del_timer_sync (int *) ;
 struct vcc_port* dev_get_drvdata (TYPE_2__*) ;
 int dev_set_drvdata (TYPE_2__*,int *) ;
 int kfree (struct vcc_port*) ;
 int sysfs_remove_group (int *,int *) ;
 int tty_unregister_device (int ,int ) ;
 int tty_vhangup (scalar_t__) ;
 int vcc_attribute_group ;
 struct vcc_port* vcc_get (int ,int) ;
 int vcc_put (struct vcc_port*,int) ;
 int vcc_table_remove (int ) ;
 int vcc_tty_driver ;
 int vio_ldc_free (TYPE_1__*) ;

__attribute__((used)) static int vcc_remove(struct vio_dev *vdev)
{
 struct vcc_port *port = dev_get_drvdata(&vdev->dev);

 if (!port)
  return -ENODEV;

 del_timer_sync(&port->rx_timer);
 del_timer_sync(&port->tx_timer);





 if (port->tty)
  tty_vhangup(port->tty);




 port = vcc_get(port->index, 1);

 if (WARN_ON(!port))
  return -ENODEV;

 tty_unregister_device(vcc_tty_driver, port->index);

 del_timer_sync(&port->vio.timer);
 vio_ldc_free(&port->vio);
 sysfs_remove_group(&vdev->dev.kobj, &vcc_attribute_group);
 dev_set_drvdata(&vdev->dev, ((void*)0));
 if (port->tty) {
  port->removed = 1;
  vcc_put(port, 1);
 } else {
  vcc_table_remove(port->index);

  kfree(port->vio.name);
  kfree(port->domain);
  kfree(port);
 }

 return 0;
}
