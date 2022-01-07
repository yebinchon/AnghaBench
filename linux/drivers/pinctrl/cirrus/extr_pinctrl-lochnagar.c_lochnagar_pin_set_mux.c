
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lochnagar_pin_priv {int dev; TYPE_1__* lochnagar; } ;
struct lochnagar_pin {int name; int reg; } ;
struct TYPE_2__ {int type; int regmap; } ;



 int dev_dbg (int ,char*,int ,unsigned int) ;
 int dev_err (int ,char*,int ,int) ;
 int lochnagar2_get_gpio_chan (struct lochnagar_pin_priv*,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int lochnagar_pin_set_mux(struct lochnagar_pin_priv *priv,
     const struct lochnagar_pin *pin,
     unsigned int op)
{
 int ret;

 switch (priv->lochnagar->type) {
 case 128:
  break;
 default:
  ret = lochnagar2_get_gpio_chan(priv, op);
  if (ret < 0) {
   dev_err(priv->dev, "Failed to get channel for %s: %d\n",
    pin->name, ret);
   return ret;
  }

  op = ret;
  break;
 }

 dev_dbg(priv->dev, "Set pin %s to 0x%x\n", pin->name, op);

 ret = regmap_write(priv->lochnagar->regmap, pin->reg, op);
 if (ret)
  dev_err(priv->dev, "Failed to set %s mux: %d\n",
   pin->name, ret);

 return 0;
}
