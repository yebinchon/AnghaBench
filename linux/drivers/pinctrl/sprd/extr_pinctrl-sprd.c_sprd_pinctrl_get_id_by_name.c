
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sprd_pinctrl_soc_info {int npins; TYPE_1__* pins; } ;
struct sprd_pinctrl {struct sprd_pinctrl_soc_info* info; } ;
struct TYPE_2__ {int number; int name; } ;


 int ENODEV ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int sprd_pinctrl_get_id_by_name(struct sprd_pinctrl *sprd_pctl,
           const char *name)
{
 struct sprd_pinctrl_soc_info *info = sprd_pctl->info;
 int i;

 for (i = 0; i < info->npins; i++) {
  if (!strcmp(info->pins[i].name, name))
   return info->pins[i].number;
 }

 return -ENODEV;
}
