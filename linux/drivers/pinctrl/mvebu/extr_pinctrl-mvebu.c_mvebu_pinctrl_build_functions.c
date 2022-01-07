
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mvebu_pinctrl_group {int num_settings; char* name; TYPE_2__* settings; } ;
struct mvebu_pinctrl_function {char** groups; int num_groups; } ;
struct TYPE_3__ {int npins; } ;
struct mvebu_pinctrl {int num_groups; int variant; int num_functions; struct mvebu_pinctrl_group* groups; struct mvebu_pinctrl_function* functions; TYPE_1__ desc; } ;
struct TYPE_4__ {int variant; int name; } ;


 int ENOMEM ;
 int EOVERFLOW ;
 int GFP_KERNEL ;
 int _add_function (struct mvebu_pinctrl_function*,int*,int ) ;
 int dev_err (int *,char*,int) ;
 void* devm_kcalloc (int *,int,int,int ) ;
 struct mvebu_pinctrl_function* mvebu_pinctrl_find_function_by_name (struct mvebu_pinctrl*,int ) ;

__attribute__((used)) static int mvebu_pinctrl_build_functions(struct platform_device *pdev,
      struct mvebu_pinctrl *pctl)
{
 struct mvebu_pinctrl_function *funcs;
 int num = 0, funcsize = pctl->desc.npins;
 int n, s;



 funcs = devm_kcalloc(&pdev->dev,
        funcsize, sizeof(struct mvebu_pinctrl_function),
        GFP_KERNEL);
 if (!funcs)
  return -ENOMEM;

 for (n = 0; n < pctl->num_groups; n++) {
  struct mvebu_pinctrl_group *grp = &pctl->groups[n];
  for (s = 0; s < grp->num_settings; s++) {
   int ret;


   if (pctl->variant &&
       !(pctl->variant & grp->settings[s].variant))
    continue;


   ret = _add_function(funcs, &funcsize,
         grp->settings[s].name);
   if (ret == -EOVERFLOW)
    dev_err(&pdev->dev,
     "More functions than pins(%d)\n",
     pctl->desc.npins);
   if (ret < 0)
    continue;

   num++;
  }
 }

 pctl->num_functions = num;
 pctl->functions = funcs;

 for (n = 0; n < pctl->num_groups; n++) {
  struct mvebu_pinctrl_group *grp = &pctl->groups[n];
  for (s = 0; s < grp->num_settings; s++) {
   struct mvebu_pinctrl_function *f;
   const char **groups;


   if (pctl->variant &&
       !(pctl->variant & grp->settings[s].variant))
    continue;

   f = mvebu_pinctrl_find_function_by_name(pctl,
       grp->settings[s].name);


   if (!f->groups) {
    f->groups = devm_kcalloc(&pdev->dev,
       f->num_groups,
       sizeof(char *),
       GFP_KERNEL);
    if (!f->groups)
     return -ENOMEM;
   }


   groups = f->groups;
   while (*groups)
    groups++;
   *groups = grp->name;
  }
 }

 return 0;
}
