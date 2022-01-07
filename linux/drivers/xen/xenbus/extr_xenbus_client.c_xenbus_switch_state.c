
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int __xenbus_switch_state (struct xenbus_device*,int,int ) ;

int xenbus_switch_state(struct xenbus_device *dev, enum xenbus_state state)
{
 return __xenbus_switch_state(dev, state, 0);
}
