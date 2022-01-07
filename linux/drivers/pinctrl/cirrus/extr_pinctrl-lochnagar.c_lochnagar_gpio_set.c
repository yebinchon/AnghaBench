
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lochnagar_pin_priv {int dev; TYPE_1__* pins; struct lochnagar* lochnagar; } ;
struct lochnagar_pin {int type; int shift; int name; int reg; int invert; } ;
struct lochnagar {int regmap; } ;
struct gpio_chip {int parent; } ;
struct TYPE_2__ {struct lochnagar_pin* drv_data; } ;


 int BIT (int) ;
 int EINVAL ;
 int LN2_OP_GPIO ;


 int dev_dbg (int ,char*,int ,char*) ;
 int dev_err (int ,char*,int ,int) ;
 struct lochnagar_pin_priv* gpiochip_get_data (struct gpio_chip*) ;
 int lochnagar_pin_set_mux (struct lochnagar_pin_priv*,struct lochnagar_pin const*,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static void lochnagar_gpio_set(struct gpio_chip *chip,
          unsigned int offset, int value)
{
 struct lochnagar_pin_priv *priv = gpiochip_get_data(chip);
 struct lochnagar *lochnagar = priv->lochnagar;
 const struct lochnagar_pin *pin = priv->pins[offset].drv_data;
 int ret;

 value = !!value;

 dev_dbg(priv->dev, "Set GPIO %s to %s\n",
  pin->name, value ? "high" : "low");

 switch (pin->type) {
 case 128:
  value |= LN2_OP_GPIO;

  ret = lochnagar_pin_set_mux(priv, pin, value);
  break;
 case 129:
  if (pin->invert)
   value = !value;

  ret = regmap_update_bits(lochnagar->regmap, pin->reg,
      BIT(pin->shift), value << pin->shift);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (ret < 0)
  dev_err(chip->parent, "Failed to set %s value: %d\n",
   pin->name, ret);
}
