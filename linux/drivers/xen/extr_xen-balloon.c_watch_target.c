
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_watch {int dummy; } ;
struct TYPE_2__ {unsigned long long target_pages; } ;


 int PAGE_SHIFT ;
 int XBT_NIL ;
 int balloon_set_new_target (unsigned long long) ;
 TYPE_1__ balloon_stats ;
 scalar_t__ max_mem_size ;
 scalar_t__ xen_initial_domain () ;
 scalar_t__ xen_pv_domain () ;
 scalar_t__ xen_saved_max_mem_size ;
 int xenbus_scanf (int ,char*,char*,char*,unsigned long long*) ;

__attribute__((used)) static void watch_target(struct xenbus_watch *watch,
    const char *path, const char *token)
{
 unsigned long long new_target, static_max;
 int err;
 static bool watch_fired;
 static long target_diff;







 err = xenbus_scanf(XBT_NIL, "memory", "target", "%llu", &new_target);
 if (err != 1) {

  return;
 }




 new_target >>= PAGE_SHIFT - 10;

 if (!watch_fired) {
  watch_fired = 1;

  if ((xenbus_scanf(XBT_NIL, "memory", "static-max",
      "%llu", &static_max) == 1) ||
      (xenbus_scanf(XBT_NIL, "memory", "memory_static_max",
      "%llu", &static_max) == 1))
   static_max >>= PAGE_SHIFT - 10;
  else
   static_max = new_target;

  target_diff = (xen_pv_domain() || xen_initial_domain()) ? 0
    : static_max - balloon_stats.target_pages;
 }

 balloon_set_new_target(new_target - target_diff);
}
