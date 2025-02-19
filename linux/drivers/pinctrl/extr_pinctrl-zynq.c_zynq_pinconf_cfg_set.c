
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct zynq_pinctrl {scalar_t__ pctrl_offset; int syscon; } ;
struct pinctrl_dev {int dev; } ;


 int EIO ;
 int ENOTSUPP ;






 unsigned int ZYNQ_NUM_MIOS ;
 unsigned int ZYNQ_PINCONF_DISABLE_RECVR ;
 unsigned int ZYNQ_PINCONF_IOTYPE_MASK ;
 unsigned int ZYNQ_PINCONF_IOTYPE_SHIFT ;
 unsigned int ZYNQ_PINCONF_PULLUP ;
 unsigned int ZYNQ_PINCONF_SPEED ;
 unsigned int ZYNQ_PINCONF_TRISTATE ;
 int dev_warn (int ,char*,unsigned int) ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct zynq_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;
 int regmap_write (int ,scalar_t__,unsigned int) ;
 unsigned int zynq_iostd_max ;
 unsigned int zynq_iostd_min ;

__attribute__((used)) static int zynq_pinconf_cfg_set(struct pinctrl_dev *pctldev,
    unsigned int pin,
    unsigned long *configs,
    unsigned int num_configs)
{
 int i, ret;
 u32 reg;
 u32 pullup = 0;
 u32 tristate = 0;
 struct zynq_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 if (pin >= ZYNQ_NUM_MIOS)
  return -ENOTSUPP;

 ret = regmap_read(pctrl->syscon, pctrl->pctrl_offset + (4 * pin), &reg);
 if (ret)
  return -EIO;

 for (i = 0; i < num_configs; i++) {
  unsigned int param = pinconf_to_config_param(configs[i]);
  unsigned int arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 131:
   pullup = ZYNQ_PINCONF_PULLUP;
   break;
  case 132:
   tristate = ZYNQ_PINCONF_TRISTATE;
   break;
  case 133:
   reg &= ~(ZYNQ_PINCONF_PULLUP | ZYNQ_PINCONF_TRISTATE);
   break;
  case 128:
   if (arg)
    reg |= ZYNQ_PINCONF_SPEED;
   else
    reg &= ~ZYNQ_PINCONF_SPEED;

   break;
  case 130:
   if (arg <= zynq_iostd_min || arg >= zynq_iostd_max) {
    dev_warn(pctldev->dev,
      "unsupported IO standard '%u'\n",
      param);
    break;
   }
   reg &= ~ZYNQ_PINCONF_IOTYPE_MASK;
   reg |= arg << ZYNQ_PINCONF_IOTYPE_SHIFT;
   break;
  case 129:
   if (arg)
    reg |= ZYNQ_PINCONF_DISABLE_RECVR;
   else
    reg &= ~ZYNQ_PINCONF_DISABLE_RECVR;

   break;
  default:
   dev_warn(pctldev->dev,
     "unsupported configuration parameter '%u'\n",
     param);
   continue;
  }
 }

 if (tristate || pullup) {
  reg &= ~(ZYNQ_PINCONF_PULLUP | ZYNQ_PINCONF_TRISTATE);
  reg |= tristate | pullup;
 }

 ret = regmap_write(pctrl->syscon, pctrl->pctrl_offset + (4 * pin), reg);
 if (ret)
  return -EIO;

 return 0;
}
