
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct core_component {int name; int list; } ;
struct TYPE_2__ {int bus; } ;


 int EINVAL ;
 int bus_for_each_dev (int *,int *,struct core_component*,int ) ;
 int disconnect_channels ;
 int list_del (int *) ;
 TYPE_1__ mc ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;

int most_deregister_component(struct core_component *comp)
{
 if (!comp) {
  pr_err("Bad component\n");
  return -EINVAL;
 }

 bus_for_each_dev(&mc.bus, ((void*)0), comp, disconnect_channels);
 list_del(&comp->list);
 pr_info("deregistering component %s\n", comp->name);
 return 0;
}
