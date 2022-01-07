
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dev; } ;
struct ns2_pinctrl {unsigned int num_groups; unsigned int num_functions; int mux_log; struct ns2_pin_group* groups; struct ns2_pin_function* functions; } ;
struct TYPE_2__ {int alt; int shift; int offset; } ;
struct ns2_pin_group {TYPE_1__ mux; int name; } ;
struct ns2_pin_function {int name; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,unsigned int,int ,unsigned int,...) ;
 int ns2_pinmux_set (struct ns2_pinctrl*,struct ns2_pin_function const*,struct ns2_pin_group const*,int ) ;
 struct ns2_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int ns2_pinmux_enable(struct pinctrl_dev *pctrl_dev,
        unsigned int func_select, unsigned int grp_select)
{
 struct ns2_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);
 const struct ns2_pin_function *func;
 const struct ns2_pin_group *grp;

 if (grp_select >= pinctrl->num_groups ||
  func_select >= pinctrl->num_functions)
  return -EINVAL;

 func = &pinctrl->functions[func_select];
 grp = &pinctrl->groups[grp_select];

 dev_dbg(pctrl_dev->dev, "func:%u name:%s grp:%u name:%s\n",
  func_select, func->name, grp_select, grp->name);

 dev_dbg(pctrl_dev->dev, "offset:0x%08x shift:%u alt:%u\n",
  grp->mux.offset, grp->mux.shift, grp->mux.alt);

 return ns2_pinmux_set(pinctrl, func, grp, pinctrl->mux_log);
}
