
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct armada_37xx_pinctrl {int dev; } ;
struct armada_37xx_pin_group {int dummy; } ;


 struct armada_37xx_pin_group* armada_37xx_find_next_grp_by_pin (struct armada_37xx_pinctrl*,unsigned int,int*) ;
 int armada_37xx_pmx_set_by_name (struct pinctrl_dev*,char*,struct armada_37xx_pin_group*) ;
 int dev_dbg (int ,char*,unsigned int) ;
 struct armada_37xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int armada_37xx_gpio_request_enable(struct pinctrl_dev *pctldev,
        struct pinctrl_gpio_range *range,
        unsigned int offset)
{
 struct armada_37xx_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 struct armada_37xx_pin_group *group;
 int grp = 0;

 dev_dbg(info->dev, "requesting gpio %d\n", offset);

 while ((group = armada_37xx_find_next_grp_by_pin(info, offset, &grp)))
  armada_37xx_pmx_set_by_name(pctldev, "gpio", group);

 return 0;
}
