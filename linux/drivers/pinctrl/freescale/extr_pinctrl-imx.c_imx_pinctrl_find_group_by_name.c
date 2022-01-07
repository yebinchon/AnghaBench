
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int num_groups; } ;
struct group_desc {int name; } ;


 struct group_desc* pinctrl_generic_get_group (struct pinctrl_dev*,int) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static inline const struct group_desc *imx_pinctrl_find_group_by_name(
    struct pinctrl_dev *pctldev,
    const char *name)
{
 const struct group_desc *grp = ((void*)0);
 int i;

 for (i = 0; i < pctldev->num_groups; i++) {
  grp = pinctrl_generic_get_group(pctldev, i);
  if (grp && !strcmp(grp->name, name))
   break;
 }

 return grp;
}
