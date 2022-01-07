
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct oxnas_pinctrl {int dev; int regmap; struct oxnas_function* functions; struct oxnas_pin_group* groups; } ;
struct oxnas_pin_group {scalar_t__ bank; int pin; struct oxnas_desc_function* functions; } ;
struct oxnas_function {char* name; } ;
struct oxnas_desc_function {int fct; scalar_t__ name; } ;


 int BIT (int ) ;
 int EINVAL ;
 int PINMUX_810_PRIMARY_SEL0 ;
 int PINMUX_810_PRIMARY_SEL1 ;
 int PINMUX_810_SECONDARY_SEL0 ;
 int PINMUX_810_SECONDARY_SEL1 ;
 int PINMUX_810_TERTIARY_SEL0 ;
 int PINMUX_810_TERTIARY_SEL1 ;
 int dev_dbg (int ,char*,char const*,scalar_t__,int ,int,int ) ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 struct oxnas_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int oxnas_ox810se_pinmux_enable(struct pinctrl_dev *pctldev,
           unsigned int func, unsigned int group)
{
 struct oxnas_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 const struct oxnas_pin_group *pg = &pctl->groups[group];
 const struct oxnas_function *pf = &pctl->functions[func];
 const char *fname = pf->name;
 struct oxnas_desc_function *functions = pg->functions;
 u32 mask = BIT(pg->pin);

 while (functions->name) {
  if (!strcmp(functions->name, fname)) {
   dev_dbg(pctl->dev,
    "setting function %s bank %d pin %d fct %d mask %x\n",
    fname, pg->bank, pg->pin,
    functions->fct, mask);

   regmap_write_bits(pctl->regmap,
       (pg->bank ?
      PINMUX_810_PRIMARY_SEL1 :
      PINMUX_810_PRIMARY_SEL0),
       mask,
       (functions->fct == 1 ?
      mask : 0));
   regmap_write_bits(pctl->regmap,
       (pg->bank ?
      PINMUX_810_SECONDARY_SEL1 :
      PINMUX_810_SECONDARY_SEL0),
       mask,
       (functions->fct == 2 ?
      mask : 0));
   regmap_write_bits(pctl->regmap,
       (pg->bank ?
      PINMUX_810_TERTIARY_SEL1 :
      PINMUX_810_TERTIARY_SEL0),
       mask,
       (functions->fct == 3 ?
      mask : 0));

   return 0;
  }

  functions++;
 }

 dev_err(pctl->dev, "cannot mux pin %u to function %u\n", group, func);

 return -EINVAL;
}
