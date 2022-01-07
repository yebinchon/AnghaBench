
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxa_pinctrl_function {int ngroups; void* groups; int name; } ;
struct pxa_pinctrl {int npins; int nfuncs; int dev; struct pxa_pinctrl_function* functions; TYPE_2__* ppins; } ;
struct pxa_desc_function {scalar_t__ name; } ;
struct TYPE_3__ {scalar_t__ name; } ;
struct TYPE_4__ {TYPE_1__ pin; struct pxa_desc_function* functions; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kfree (int ,char**) ;
 void* devm_kmalloc_array (int ,int,int,int ) ;
 int memcpy (void*,char**,int) ;
 int strcmp (int ,scalar_t__) ;

__attribute__((used)) static int pxa2xx_build_groups(struct pxa_pinctrl *pctl)
{
 int i, j, ngroups;
 struct pxa_pinctrl_function *func;
 struct pxa_desc_function *df;
 char **gtmp;

 gtmp = devm_kmalloc_array(pctl->dev, pctl->npins, sizeof(*gtmp),
      GFP_KERNEL);
 if (!gtmp)
  return -ENOMEM;

 for (i = 0; i < pctl->nfuncs; i++) {
  ngroups = 0;
  for (j = 0; j < pctl->npins; j++)
   for (df = pctl->ppins[j].functions; df->name;
        df++)
    if (!strcmp(pctl->functions[i].name,
         df->name))
     gtmp[ngroups++] = (char *)
      pctl->ppins[j].pin.name;
  func = pctl->functions + i;
  func->ngroups = ngroups;
  func->groups =
   devm_kmalloc_array(pctl->dev, ngroups,
        sizeof(char *), GFP_KERNEL);
  if (!func->groups)
   return -ENOMEM;

  memcpy(func->groups, gtmp, ngroups * sizeof(*gtmp));
 }

 devm_kfree(pctl->dev, gtmp);
 return 0;
}
