
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_device {int state; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
struct TYPE_2__ {int frontends_lock; } ;


 int WARN_ON (int) ;





 int backend_connect (struct xenbus_device*) ;
 int backend_disconnect (struct xenbus_device*) ;
 int down (int *) ;
 TYPE_1__ pvcalls_back_global ;
 int up (int *) ;
 int xenbus_switch_state (struct xenbus_device*,int const) ;

__attribute__((used)) static void set_backend_state(struct xenbus_device *dev,
         enum xenbus_state state)
{
 while (dev->state != state) {
  switch (dev->state) {
  case 132:
   switch (state) {
   case 129:
   case 130:
    xenbus_switch_state(dev, 129);
    break;
   case 131:
    xenbus_switch_state(dev, 131);
    break;
   default:
    WARN_ON(1);
   }
   break;
  case 129:
  case 128:
   switch (state) {
   case 130:
    backend_connect(dev);
    xenbus_switch_state(dev, 130);
    break;
   case 131:
   case 132:
    xenbus_switch_state(dev, 131);
    break;
   default:
    WARN_ON(1);
   }
   break;
  case 130:
   switch (state) {
   case 129:
   case 131:
   case 132:
    down(&pvcalls_back_global.frontends_lock);
    backend_disconnect(dev);
    up(&pvcalls_back_global.frontends_lock);
    xenbus_switch_state(dev, 131);
    break;
   default:
    WARN_ON(1);
   }
   break;
  case 131:
   switch (state) {
   case 129:
   case 130:
   case 132:
    xenbus_switch_state(dev, 132);
    break;
   default:
    WARN_ON(1);
   }
   break;
  default:
   WARN_ON(1);
  }
 }
}
