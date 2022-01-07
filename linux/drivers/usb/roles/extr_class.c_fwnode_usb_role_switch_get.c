
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* parent; } ;
struct usb_role_switch {TYPE_3__ dev; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int IS_ERR_OR_NULL (struct usb_role_switch*) ;
 int WARN_ON (int) ;
 struct usb_role_switch* fwnode_connection_find_match (struct fwnode_handle*,char*,int *,int ) ;
 int try_module_get (int ) ;
 struct usb_role_switch* usb_role_switch_is_parent (struct fwnode_handle*) ;
 int usb_role_switch_match ;

struct usb_role_switch *fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
{
 struct usb_role_switch *sw;

 sw = usb_role_switch_is_parent(fwnode);
 if (!sw)
  sw = fwnode_connection_find_match(fwnode, "usb-role-switch",
        ((void*)0), usb_role_switch_match);
 if (!IS_ERR_OR_NULL(sw))
  WARN_ON(!try_module_get(sw->dev.parent->driver->owner));

 return sw;
}
