
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; } ;
struct backend_info {int state; int have_hotplug_status_watch; struct xenbus_device* dev; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int pr_debug (char*,int ,int ) ;
 int xenbus_strstate (int) ;
 int xenbus_switch_state (struct xenbus_device*,int) ;

__attribute__((used)) static inline void backend_switch_state(struct backend_info *be,
     enum xenbus_state state)
{
 struct xenbus_device *dev = be->dev;

 pr_debug("%s -> %s\n", dev->nodename, xenbus_strstate(state));
 be->state = state;




 if (!be->have_hotplug_status_watch)
  xenbus_switch_state(dev, state);
}
