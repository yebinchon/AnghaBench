
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slg51000 {int dev; } ;
struct regulator_desc {int dummy; } ;
struct regulator_config {struct gpio_desc* ena_gpiod; struct slg51000* driver_data; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ;
 int GPIOD_OUT_LOW ;
 int IS_ERR (struct gpio_desc*) ;
 struct gpio_desc* devm_gpiod_get_from_of_node (int ,struct device_node*,char*,int ,int,char*) ;
 int devm_gpiod_unhinge (int ,struct gpio_desc*) ;

__attribute__((used)) static int slg51000_of_parse_cb(struct device_node *np,
    const struct regulator_desc *desc,
    struct regulator_config *config)
{
 struct slg51000 *chip = config->driver_data;
 struct gpio_desc *ena_gpiod;
 enum gpiod_flags gflags = GPIOD_OUT_LOW | GPIOD_FLAGS_BIT_NONEXCLUSIVE;

 ena_gpiod = devm_gpiod_get_from_of_node(chip->dev, np,
      "enable-gpios", 0,
      gflags, "gpio-en-ldo");
 if (!IS_ERR(ena_gpiod)) {
  config->ena_gpiod = ena_gpiod;
  devm_gpiod_unhinge(chip->dev, config->ena_gpiod);
 }

 return 0;
}
