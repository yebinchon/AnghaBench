
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct pic32_pinctrl {int dev; scalar_t__ reg_base; struct pic32_function* functions; struct pic32_pin_group* groups; } ;
struct pic32_pin_group {struct pic32_desc_function* functions; } ;
struct pic32_function {char* name; } ;
struct pic32_desc_function {scalar_t__ muxreg; int muxval; scalar_t__ name; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,char const*,scalar_t__,int ) ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 struct pic32_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int strcmp (scalar_t__,char const*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pic32_pinmux_enable(struct pinctrl_dev *pctldev,
       unsigned func, unsigned group)
{
 struct pic32_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 const struct pic32_pin_group *pg = &pctl->groups[group];
 const struct pic32_function *pf = &pctl->functions[func];
 const char *fname = pf->name;
 struct pic32_desc_function *functions = pg->functions;

 while (functions->name) {
  if (!strcmp(functions->name, fname)) {
   dev_dbg(pctl->dev,
    "setting function %s reg 0x%x = %d\n",
    fname, functions->muxreg, functions->muxval);

   writel(functions->muxval, pctl->reg_base + functions->muxreg);

   return 0;
  }

  functions++;
 }

 dev_err(pctl->dev, "cannot mux pin %u to function %u\n", group, func);

 return -EINVAL;
}
