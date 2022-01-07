
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinmux_ops {unsigned int (* get_functions_count ) (struct pinctrl_dev*) ;char* (* get_function_name ) (struct pinctrl_dev*,unsigned int) ;} ;
struct pinctrl_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {struct pinmux_ops* pmxops; } ;


 int EINVAL ;
 int strcmp (char const*,char const*) ;
 unsigned int stub1 (struct pinctrl_dev*) ;
 char* stub2 (struct pinctrl_dev*,unsigned int) ;

__attribute__((used)) static int pinmux_func_name_to_selector(struct pinctrl_dev *pctldev,
     const char *function)
{
 const struct pinmux_ops *ops = pctldev->desc->pmxops;
 unsigned nfuncs = ops->get_functions_count(pctldev);
 unsigned selector = 0;


 while (selector < nfuncs) {
  const char *fname = ops->get_function_name(pctldev, selector);

  if (!strcmp(function, fname))
   return selector;

  selector++;
 }

 return -EINVAL;
}
