
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {int name; } ;


 int ARRAY_SIZE (struct dss_pll**) ;
 struct dss_pll** dss_plls ;
 scalar_t__ strcmp (int ,char const*) ;

struct dss_pll *dss_pll_find(const char *name)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dss_plls); ++i) {
  if (dss_plls[i] && strcmp(dss_plls[i]->name, name) == 0)
   return dss_plls[i];
 }

 return ((void*)0);
}
