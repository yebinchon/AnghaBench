
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct usb_port {TYPE_1__ dev; struct usb_port* peer; scalar_t__ is_superspeed; } ;


 int WARN (int,char*,int ,int ) ;
 int dev_name (TYPE_1__*) ;
 int pm_runtime_get_sync (TYPE_1__*) ;
 int pm_runtime_put (TYPE_1__*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void unlink_peers(struct usb_port *left, struct usb_port *right)
{
 struct usb_port *ss_port, *hs_port;

 WARN(right->peer != left || left->peer != right,
   "%s and %s are not peers?\n",
   dev_name(&left->dev), dev_name(&right->dev));






 if (left->is_superspeed) {
  ss_port = left;
  hs_port = right;
 } else {
  ss_port = right;
  hs_port = left;
 }

 pm_runtime_get_sync(&hs_port->dev);

 sysfs_remove_link(&left->dev.kobj, "peer");
 right->peer = ((void*)0);
 sysfs_remove_link(&right->dev.kobj, "peer");
 left->peer = ((void*)0);


 pm_runtime_put(&ss_port->dev);


 pm_runtime_put(&hs_port->dev);
}
