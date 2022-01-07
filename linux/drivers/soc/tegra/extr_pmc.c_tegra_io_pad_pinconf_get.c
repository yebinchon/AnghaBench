
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


 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct tegra_pmc* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct tegra_io_pad_soc* tegra_io_pad_find (struct tegra_pmc*,unsigned int) ;
 int tegra_io_pad_get_voltage (struct tegra_pmc*,int ) ;
 int tegra_io_pad_is_powered (struct tegra_pmc*,int ) ;

__attribute__((used)) static int tegra_io_pad_pinconf_get(struct pinctrl_dev *pctl_dev,
        unsigned int pin, unsigned long *config)
{
 enum pin_config_param param = pinconf_to_config_param(*config);
 struct tegra_pmc *pmc = pinctrl_dev_get_drvdata(pctl_dev);
 const struct tegra_io_pad_soc *pad;
 int ret;
 u32 arg;

 pad = tegra_io_pad_find(pmc, pin);
 if (!pad)
  return -EINVAL;

 switch (param) {
 case 128:
  ret = tegra_io_pad_get_voltage(pmc, pad->id);
  if (ret < 0)
   return ret;

  arg = ret;
  break;

 case 129:
  ret = tegra_io_pad_is_powered(pmc, pad->id);
  if (ret < 0)
   return ret;

  arg = !ret;
  break;

 default:
  return -EINVAL;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
