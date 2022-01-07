
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct usb_port {scalar_t__ location; int is_superspeed; TYPE_1__ dev; struct usb_port* peer; } ;


 int EBUSY ;
 int WARN_ON (int) ;
 char* dev_name (TYPE_1__*) ;
 int pm_runtime_get_sync (TYPE_1__*) ;
 int pm_runtime_put (TYPE_1__*) ;
 int pr_debug (char*,char*,char*,char*,char*,char*,char*,char*) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static int link_peers(struct usb_port *left, struct usb_port *right)
{
 struct usb_port *ss_port, *hs_port;
 int rc;

 if (left->peer == right && right->peer == left)
  return 0;

 if (left->peer || right->peer) {
  struct usb_port *lpeer = left->peer;
  struct usb_port *rpeer = right->peer;
  char *method;

  if (left->location && left->location == right->location)
   method = "location";
  else
   method = "default";

  pr_debug("usb: failed to peer %s and %s by %s (%s:%s) (%s:%s)\n",
   dev_name(&left->dev), dev_name(&right->dev), method,
   dev_name(&left->dev),
   lpeer ? dev_name(&lpeer->dev) : "none",
   dev_name(&right->dev),
   rpeer ? dev_name(&rpeer->dev) : "none");
  return -EBUSY;
 }

 rc = sysfs_create_link(&left->dev.kobj, &right->dev.kobj, "peer");
 if (rc)
  return rc;
 rc = sysfs_create_link(&right->dev.kobj, &left->dev.kobj, "peer");
 if (rc) {
  sysfs_remove_link(&left->dev.kobj, "peer");
  return rc;
 }






 if (left->is_superspeed) {
  ss_port = left;
  WARN_ON(right->is_superspeed);
  hs_port = right;
 } else {
  ss_port = right;
  WARN_ON(!right->is_superspeed);
  hs_port = left;
 }
 pm_runtime_get_sync(&hs_port->dev);

 left->peer = right;
 right->peer = left;
 pm_runtime_get_sync(&ss_port->dev);
 pm_runtime_put(&hs_port->dev);

 return 0;
}
