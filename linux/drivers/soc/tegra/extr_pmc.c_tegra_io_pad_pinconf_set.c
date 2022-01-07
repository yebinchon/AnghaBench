
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmc {int dummy; } ;
struct tegra_io_pad_soc {int id; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;


 int TEGRA_IO_PAD_VOLTAGE_1V8 ;
 int TEGRA_IO_PAD_VOLTAGE_3V3 ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct tegra_pmc* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct tegra_io_pad_soc* tegra_io_pad_find (struct tegra_pmc*,unsigned int) ;
 int tegra_io_pad_power_disable (int ) ;
 int tegra_io_pad_power_enable (int ) ;
 int tegra_io_pad_set_voltage (struct tegra_pmc*,int ,int ) ;

__attribute__((used)) static int tegra_io_pad_pinconf_set(struct pinctrl_dev *pctl_dev,
        unsigned int pin, unsigned long *configs,
        unsigned int num_configs)
{
 struct tegra_pmc *pmc = pinctrl_dev_get_drvdata(pctl_dev);
 const struct tegra_io_pad_soc *pad;
 enum pin_config_param param;
 unsigned int i;
 int err;
 u32 arg;

 pad = tegra_io_pad_find(pmc, pin);
 if (!pad)
  return -EINVAL;

 for (i = 0; i < num_configs; ++i) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 129:
   if (arg)
    err = tegra_io_pad_power_disable(pad->id);
   else
    err = tegra_io_pad_power_enable(pad->id);
   if (err)
    return err;
   break;
  case 128:
   if (arg != TEGRA_IO_PAD_VOLTAGE_1V8 &&
       arg != TEGRA_IO_PAD_VOLTAGE_3V3)
    return -EINVAL;
   err = tegra_io_pad_set_voltage(pmc, pad->id, arg);
   if (err)
    return err;
   break;
  default:
   return -EINVAL;
  }
 }

 return 0;
}
