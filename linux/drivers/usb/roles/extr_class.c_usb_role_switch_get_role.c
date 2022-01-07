
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct usb_role_switch {int (* get ) (int ) ;int role; int lock; TYPE_1__ dev; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 scalar_t__ IS_ERR_OR_NULL (struct usb_role_switch*) ;
 int USB_ROLE_NONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ) ;

enum usb_role usb_role_switch_get_role(struct usb_role_switch *sw)
{
 enum usb_role role;

 if (IS_ERR_OR_NULL(sw))
  return USB_ROLE_NONE;

 mutex_lock(&sw->lock);

 if (sw->get)
  role = sw->get(sw->dev.parent);
 else
  role = sw->role;

 mutex_unlock(&sw->lock);

 return role;
}
