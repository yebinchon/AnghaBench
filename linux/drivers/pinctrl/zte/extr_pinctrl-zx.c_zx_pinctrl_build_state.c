
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_pinctrl_soc_info {int npins; struct pinctrl_pin_desc* pins; } ;
struct zx_pinctrl {struct pinctrl_dev* pctldev; struct zx_pinctrl_soc_info* info; } ;
struct zx_pin_data {struct zx_mux_desc* muxes; } ;
struct zx_mux_desc {char* name; } ;
struct platform_device {int dev; } ;
struct pinctrl_pin_desc {char* name; struct zx_pin_data* drv_data; int number; } ;
struct pinctrl_dev {int num_groups; int num_functions; int pin_function_tree; int pin_group_tree; } ;
struct group_desc {char* name; int* pins; int num_pins; int num_group_names; char** group_names; } ;
struct function_desc {char* name; int* pins; int num_pins; int num_group_names; char** group_names; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kcalloc (int *,int,int,int ) ;
 struct group_desc* kcalloc (int,int,int ) ;
 int kfree (struct group_desc*) ;
 struct group_desc* krealloc (struct group_desc*,int,int ) ;
 struct zx_pinctrl* platform_get_drvdata (struct platform_device*) ;
 int radix_tree_insert (int *,int,struct group_desc*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int zx_pinctrl_build_state(struct platform_device *pdev)
{
 struct zx_pinctrl *zpctl = platform_get_drvdata(pdev);
 struct zx_pinctrl_soc_info *info = zpctl->info;
 struct pinctrl_dev *pctldev = zpctl->pctldev;
 struct function_desc *functions;
 int nfunctions;
 struct group_desc *groups;
 int ngroups;
 int i;


 ngroups = info->npins;
 groups = devm_kcalloc(&pdev->dev, ngroups, sizeof(*groups),
         GFP_KERNEL);
 if (!groups)
  return -ENOMEM;

 for (i = 0; i < ngroups; i++) {
  const struct pinctrl_pin_desc *pindesc = info->pins + i;
  struct group_desc *group = groups + i;

  group->name = pindesc->name;
  group->pins = (int *) &pindesc->number;
  group->num_pins = 1;
  radix_tree_insert(&pctldev->pin_group_tree, i, group);
 }

 pctldev->num_groups = ngroups;


 functions = kcalloc(info->npins, sizeof(*functions), GFP_KERNEL);
 if (!functions)
  return -ENOMEM;

 nfunctions = 0;
 for (i = 0; i < info->npins; i++) {
  const struct pinctrl_pin_desc *pindesc = info->pins + i;
  struct zx_pin_data *data = pindesc->drv_data;
  struct zx_mux_desc *mux;


  if (!data)
   continue;


  mux = data->muxes;
  while (mux->name) {
   struct function_desc *func = functions;


   while (func->name) {
    if (strcmp(mux->name, func->name) == 0) {

     func->num_group_names++;
     break;
    }
    func++;
   }

   if (!func->name) {

    func->name = mux->name;
    func->num_group_names = 1;
    radix_tree_insert(&pctldev->pin_function_tree,
        nfunctions++, func);
   }

   mux++;
  }
 }

 pctldev->num_functions = nfunctions;
 functions = krealloc(functions, nfunctions * sizeof(*functions),
        GFP_KERNEL);


 for (i = 0; i < info->npins; i++) {
  const struct pinctrl_pin_desc *pindesc = info->pins + i;
  struct zx_pin_data *data = pindesc->drv_data;
  struct zx_mux_desc *mux;

  if (!data)
   continue;

  mux = data->muxes;
  while (mux->name) {
   struct function_desc *func;
   const char **group;
   int j;


   for (j = 0; j < nfunctions; j++)
    if (strcmp(functions[j].name, mux->name) == 0)
     break;

   func = functions + j;
   if (!func->group_names) {
    func->group_names = devm_kcalloc(&pdev->dev,
      func->num_group_names,
      sizeof(*func->group_names),
      GFP_KERNEL);
    if (!func->group_names) {
     kfree(functions);
     return -ENOMEM;
    }
   }

   group = func->group_names;
   while (*group)
    group++;
   *group = pindesc->name;

   mux++;
  }
 }

 return 0;
}
