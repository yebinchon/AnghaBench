
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_pinctrl_priv {int regmap; TYPE_1__* socdata; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int caps; } ;


 int UNIPHIER_PINCTRL_CAPS_DBGMUX_SEPARATE ;
 int UNIPHIER_PINCTRL_LOAD_PINMUX ;
 unsigned int UNIPHIER_PINCTRL_PINMUX_BASE ;
 struct uniphier_pinctrl_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,int) ;
 int regmap_write (int ,int ,int) ;
 int uniphier_conf_pin_input_enable (struct pinctrl_dev*,unsigned int,int) ;

__attribute__((used)) static int uniphier_pmx_set_one_mux(struct pinctrl_dev *pctldev, unsigned pin,
        int muxval)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 unsigned int mux_bits, reg_stride, reg, reg_end, shift, mask;
 bool load_pinctrl;
 int ret;


 ret = uniphier_conf_pin_input_enable(pctldev, pin, 1);
 if (ret)
  return ret;

 if (muxval < 0)
  return 0;

 if (priv->socdata->caps & UNIPHIER_PINCTRL_CAPS_DBGMUX_SEPARATE) {





  mux_bits = 4;
  reg_stride = 8;
  load_pinctrl = 1;
 } else {





  mux_bits = 8;
  reg_stride = 4;
  load_pinctrl = 0;
 }

 reg = UNIPHIER_PINCTRL_PINMUX_BASE + pin * mux_bits / 32 * reg_stride;
 reg_end = reg + reg_stride;
 shift = pin * mux_bits % 32;
 mask = (1U << mux_bits) - 1;





 for (; reg < reg_end; reg += 4) {
  ret = regmap_update_bits(priv->regmap, reg,
      mask << shift, muxval << shift);
  if (ret)
   return ret;
  muxval >>= mux_bits;
 }

 if (load_pinctrl) {
  ret = regmap_write(priv->regmap,
       UNIPHIER_PINCTRL_LOAD_PINMUX, 1);
  if (ret)
   return ret;
 }

 return 0;
}
