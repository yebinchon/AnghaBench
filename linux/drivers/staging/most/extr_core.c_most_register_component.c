
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct core_component {int name; int list; } ;
struct TYPE_2__ {int comp_list; } ;


 int EINVAL ;
 int list_add_tail (int *,int *) ;
 TYPE_1__ mc ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;

int most_register_component(struct core_component *comp)
{
 if (!comp) {
  pr_err("Bad component\n");
  return -EINVAL;
 }
 list_add_tail(&comp->list, &mc.comp_list);
 pr_info("registered new core component %s\n", comp->name);
 return 0;
}
