
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_37xx_pmx_func {char* name; char** groups; int ngroups; } ;
struct armada_37xx_pinctrl {int nfuncs; int ngroups; struct armada_37xx_pin_group* groups; int dev; struct armada_37xx_pmx_func* funcs; } ;
struct armada_37xx_pin_group {char* name; int funcs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NB_FUNCS ;
 char** devm_kcalloc (int ,int ,int,int ) ;
 int match_string (int ,int ,char const*) ;

__attribute__((used)) static int armada_37xx_fill_func(struct armada_37xx_pinctrl *info)
{
 struct armada_37xx_pmx_func *funcs = info->funcs;
 int n;

 for (n = 0; n < info->nfuncs; n++) {
  const char *name = funcs[n].name;
  const char **groups;
  int g;

  funcs[n].groups = devm_kcalloc(info->dev,
            funcs[n].ngroups,
            sizeof(*(funcs[n].groups)),
            GFP_KERNEL);
  if (!funcs[n].groups)
   return -ENOMEM;

  groups = funcs[n].groups;

  for (g = 0; g < info->ngroups; g++) {
   struct armada_37xx_pin_group *gp = &info->groups[g];
   int f;

   f = match_string(gp->funcs, NB_FUNCS, name);
   if (f < 0)
    continue;

   *groups = gp->name;
   groups++;
  }
 }
 return 0;
}
