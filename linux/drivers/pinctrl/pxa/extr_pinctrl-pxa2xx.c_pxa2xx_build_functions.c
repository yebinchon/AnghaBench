
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa_pinctrl_function {scalar_t__ name; } ;
struct pxa_pinctrl {int npins; int nfuncs; int dev; int functions; TYPE_1__* ppins; } ;
struct pxa_desc_function {scalar_t__ name; } ;
struct TYPE_2__ {struct pxa_desc_function* functions; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pxa_pinctrl_function* devm_kcalloc (int ,int,int,int ) ;
 int devm_kfree (int ,struct pxa_pinctrl_function*) ;
 int devm_kmemdup (int ,struct pxa_pinctrl_function*,int,int ) ;
 int pxa2xx_find_function (struct pxa_pinctrl*,scalar_t__,struct pxa_pinctrl_function*) ;

__attribute__((used)) static int pxa2xx_build_functions(struct pxa_pinctrl *pctl)
{
 int i;
 struct pxa_pinctrl_function *functions;
 struct pxa_desc_function *df;







 functions = devm_kcalloc(pctl->dev, pctl->npins * 6,
     sizeof(*functions), GFP_KERNEL);
 if (!functions)
  return -ENOMEM;

 for (i = 0; i < pctl->npins; i++)
  for (df = pctl->ppins[i].functions; df->name; df++)
   if (!pxa2xx_find_function(pctl, df->name, functions))
    (functions + pctl->nfuncs++)->name = df->name;
 pctl->functions = devm_kmemdup(pctl->dev, functions,
           pctl->nfuncs * sizeof(*functions),
           GFP_KERNEL);
 if (!pctl->functions)
  return -ENOMEM;

 devm_kfree(pctl->dev, functions);
 return 0;
}
