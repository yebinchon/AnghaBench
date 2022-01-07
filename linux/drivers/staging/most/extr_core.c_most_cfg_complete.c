
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct core_component {int (* cfg_complete ) () ;} ;


 int ENODEV ;
 struct core_component* match_component (char*) ;
 int stub1 () ;

int most_cfg_complete(char *comp_name)
{
 struct core_component *comp;

 comp = match_component(comp_name);
 if (!comp)
  return -ENODEV;

 return comp->cfg_complete();
}
