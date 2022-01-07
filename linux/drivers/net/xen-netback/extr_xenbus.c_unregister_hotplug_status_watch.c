
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
struct backend_info {scalar_t__ have_hotplug_status_watch; TYPE_1__ hotplug_status_watch; } ;


 int kfree (int ) ;
 int unregister_xenbus_watch (TYPE_1__*) ;

__attribute__((used)) static void unregister_hotplug_status_watch(struct backend_info *be)
{
 if (be->have_hotplug_status_watch) {
  unregister_xenbus_watch(&be->hotplug_status_watch);
  kfree(be->hotplug_status_watch.node);
 }
 be->have_hotplug_status_watch = 0;
}
