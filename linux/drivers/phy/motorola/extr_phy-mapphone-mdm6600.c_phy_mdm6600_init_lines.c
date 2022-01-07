
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_mdm6600_map {int name; int direction; } ;
struct phy_mdm6600 {struct gpio_desc* cmd_gpios; struct gpio_desc* status_gpios; struct gpio_desc* mode_gpios; struct gpio_desc** ctrl_gpios; struct device* dev; } ;
struct gpio_desc {scalar_t__ ndescs; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct phy_mdm6600_map*) ;
 int EINVAL ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 scalar_t__ PHY_MDM6600_NR_CMD_LINES ;
 scalar_t__ PHY_MDM6600_NR_MODE_LINES ;
 scalar_t__ PHY_MDM6600_NR_STATUS_LINES ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_info (struct device*,char*,int ,int) ;
 struct gpio_desc* devm_gpiod_get (struct device*,int ,int ) ;
 void* devm_gpiod_get_array (struct device*,char*,int ) ;
 struct phy_mdm6600_map* phy_mdm6600_ctrl_gpio_map ;

__attribute__((used)) static int phy_mdm6600_init_lines(struct phy_mdm6600 *ddata)
{
 struct device *dev = ddata->dev;
 int i;


 for (i = 0; i < ARRAY_SIZE(phy_mdm6600_ctrl_gpio_map); i++) {
  const struct phy_mdm6600_map *map =
   &phy_mdm6600_ctrl_gpio_map[i];
  struct gpio_desc **gpio = &ddata->ctrl_gpios[i];

  *gpio = devm_gpiod_get(dev, map->name, map->direction);
  if (IS_ERR(*gpio)) {
   dev_info(dev, "gpio %s error %li\n",
     map->name, PTR_ERR(*gpio));
   return PTR_ERR(*gpio);
  }
 }


 ddata->mode_gpios = devm_gpiod_get_array(dev, "motorola,mode",
       GPIOD_OUT_LOW);
 if (IS_ERR(ddata->mode_gpios))
  return PTR_ERR(ddata->mode_gpios);

 if (ddata->mode_gpios->ndescs != PHY_MDM6600_NR_MODE_LINES)
  return -EINVAL;


 ddata->status_gpios = devm_gpiod_get_array(dev, "motorola,status",
         GPIOD_IN);
 if (IS_ERR(ddata->status_gpios))
  return PTR_ERR(ddata->status_gpios);

 if (ddata->status_gpios->ndescs != PHY_MDM6600_NR_STATUS_LINES)
  return -EINVAL;


 ddata->cmd_gpios = devm_gpiod_get_array(dev, "motorola,cmd",
      GPIOD_OUT_LOW);
 if (IS_ERR(ddata->cmd_gpios))
  return PTR_ERR(ddata->cmd_gpios);

 if (ddata->cmd_gpios->ndescs != PHY_MDM6600_NR_CMD_LINES)
  return -EINVAL;

 return 0;
}
