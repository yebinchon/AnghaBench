
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_soctherm {struct soctherm_throt_cfg* throt_cfgs; } ;
struct soctherm_throt_cfg {scalar_t__ name; } ;


 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static struct soctherm_throt_cfg *
find_throttle_cfg_by_name(struct tegra_soctherm *ts, const char *name)
{
 unsigned int i;

 for (i = 0; ts->throt_cfgs[i].name; i++)
  if (!strcmp(ts->throt_cfgs[i].name, name))
   return &ts->throt_cfgs[i];

 return ((void*)0);
}
