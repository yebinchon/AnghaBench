
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pinctrl_soc_info {unsigned int ngroups; struct sprd_pin_group* groups; } ;
struct sprd_pinctrl {struct sprd_pinctrl_soc_info* info; } ;
struct sprd_pin_group {int npins; unsigned int* pins; } ;
struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 char* pin_get_name (struct pinctrl_dev*,unsigned int) ;
 struct sprd_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int seq_printf (struct seq_file*,char*,char const*,unsigned long) ;
 int seq_putc (struct seq_file*,char) ;
 int sprd_pinconf_get_config (struct pinctrl_dev*,unsigned int,unsigned long*) ;

__attribute__((used)) static void sprd_pinconf_group_dbg_show(struct pinctrl_dev *pctldev,
     struct seq_file *s,
     unsigned int selector)
{
 struct sprd_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct sprd_pinctrl_soc_info *info = pctl->info;
 struct sprd_pin_group *grp;
 unsigned long config;
 const char *name;
 int i, ret;

 if (selector >= info->ngroups)
  return;

 grp = &info->groups[selector];

 seq_putc(s, '\n');
 for (i = 0; i < grp->npins; i++, config++) {
  unsigned int pin_id = grp->pins[i];

  name = pin_get_name(pctldev, pin_id);
  ret = sprd_pinconf_get_config(pctldev, pin_id, &config);
  if (ret)
   return;

  seq_printf(s, "%s: 0x%lx ", name, config);
 }
}
