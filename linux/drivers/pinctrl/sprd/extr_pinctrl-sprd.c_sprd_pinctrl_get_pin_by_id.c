
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pinctrl_soc_info {int npins; struct sprd_pin* pins; } ;
struct sprd_pinctrl {struct sprd_pinctrl_soc_info* info; } ;
struct sprd_pin {unsigned int number; } ;



__attribute__((used)) static struct sprd_pin *
sprd_pinctrl_get_pin_by_id(struct sprd_pinctrl *sprd_pctl, unsigned int id)
{
 struct sprd_pinctrl_soc_info *info = sprd_pctl->info;
 struct sprd_pin *pin = ((void*)0);
 int i;

 for (i = 0; i < info->npins; i++) {
  if (info->pins[i].number == id) {
   pin = &info->pins[i];
   break;
  }
 }

 return pin;
}
