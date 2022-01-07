
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct usb_role_switch {int (* set ) (int ,int) ;int role; int lock; TYPE_1__ dev; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 scalar_t__ IS_ERR_OR_NULL (struct usb_role_switch*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int) ;

int usb_role_switch_set_role(struct usb_role_switch *sw, enum usb_role role)
{
 int ret;

 if (IS_ERR_OR_NULL(sw))
  return 0;

 mutex_lock(&sw->lock);

 ret = sw->set(sw->dev.parent, role);
 if (!ret)
  sw->role = role;

 mutex_unlock(&sw->lock);

 return ret;
}
