
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct lochnagar_pin_priv {int dev; TYPE_1__* pins; struct lochnagar* lochnagar; } ;
struct lochnagar_pin {scalar_t__ type; int name; } ;
struct lochnagar {scalar_t__ type; } ;
struct TYPE_2__ {struct lochnagar_pin* drv_data; } ;


 int LN2_OP_GPIO ;
 scalar_t__ LN_PTYPE_MUX ;
 scalar_t__ LOCHNAGAR1 ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int lochnagar2_get_gpio_chan (struct lochnagar_pin_priv*,int) ;
 struct lochnagar_pin_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int lochnagar_gpio_request(struct pinctrl_dev *pctldev,
      struct pinctrl_gpio_range *range,
      unsigned int offset)
{
 struct lochnagar_pin_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 struct lochnagar *lochnagar = priv->lochnagar;
 const struct lochnagar_pin *pin = priv->pins[offset].drv_data;
 int ret;

 dev_dbg(priv->dev, "Requesting GPIO %s\n", pin->name);

 if (lochnagar->type == LOCHNAGAR1 || pin->type != LN_PTYPE_MUX)
  return 0;

 ret = lochnagar2_get_gpio_chan(priv, LN2_OP_GPIO);
 if (ret < 0) {
  dev_err(priv->dev, "Failed to get low channel: %d\n", ret);
  return ret;
 }

 ret = lochnagar2_get_gpio_chan(priv, LN2_OP_GPIO | 0x1);
 if (ret < 0) {
  dev_err(priv->dev, "Failed to get high channel: %d\n", ret);
  return ret;
 }

 return 0;
}
