
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct oxnas_pinctrl {int dev; int regmap; struct oxnas_function* functions; struct oxnas_pin_group* groups; } ;
struct oxnas_pin_group {int pin; scalar_t__ bank; struct oxnas_desc_function* functions; } ;
struct oxnas_function {char* name; } ;
struct oxnas_desc_function {int fct; scalar_t__ name; } ;


 int BIT (int ) ;
 int EINVAL ;
 scalar_t__ PINMUX_820_ALTERNATIVE_SEL ;
 unsigned int PINMUX_820_BANK_OFFSET ;
 scalar_t__ PINMUX_820_DEBUG_SEL ;
 scalar_t__ PINMUX_820_QUATERNARY_SEL ;
 scalar_t__ PINMUX_820_SECONDARY_SEL ;
 scalar_t__ PINMUX_820_TERTIARY_SEL ;
 int dev_dbg (int ,char*,char const*,scalar_t__,int ,int,int ) ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 struct oxnas_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_write_bits (int ,scalar_t__,int ,int ) ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int oxnas_ox820_pinmux_enable(struct pinctrl_dev *pctldev,
         unsigned int func, unsigned int group)
{
 struct oxnas_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 const struct oxnas_pin_group *pg = &pctl->groups[group];
 const struct oxnas_function *pf = &pctl->functions[func];
 const char *fname = pf->name;
 struct oxnas_desc_function *functions = pg->functions;
 unsigned int offset = (pg->bank ? PINMUX_820_BANK_OFFSET : 0);
 u32 mask = BIT(pg->pin);

 while (functions->name) {
  if (!strcmp(functions->name, fname)) {
   dev_dbg(pctl->dev,
    "setting function %s bank %d pin %d fct %d mask %x\n",
    fname, pg->bank, pg->pin,
    functions->fct, mask);

   regmap_write_bits(pctl->regmap,
       offset + PINMUX_820_SECONDARY_SEL,
       mask,
       (functions->fct == 1 ?
      mask : 0));
   regmap_write_bits(pctl->regmap,
       offset + PINMUX_820_TERTIARY_SEL,
       mask,
       (functions->fct == 2 ?
      mask : 0));
   regmap_write_bits(pctl->regmap,
       offset + PINMUX_820_QUATERNARY_SEL,
       mask,
       (functions->fct == 3 ?
      mask : 0));
   regmap_write_bits(pctl->regmap,
       offset + PINMUX_820_DEBUG_SEL,
       mask,
       (functions->fct == 4 ?
      mask : 0));
   regmap_write_bits(pctl->regmap,
       offset + PINMUX_820_ALTERNATIVE_SEL,
       mask,
       (functions->fct == 5 ?
      mask : 0));

   return 0;
  }

  functions++;
 }

 dev_err(pctl->dev, "cannot mux pin %u to function %u\n", group, func);

 return -EINVAL;
}
