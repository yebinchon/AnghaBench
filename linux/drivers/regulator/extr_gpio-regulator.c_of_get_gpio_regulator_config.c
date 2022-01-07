
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct regulator_desc {int dummy; } ;
struct gpio_regulator_state {int dummy; } ;
struct gpio_regulator_config {int enabled_at_boot; int ngpios; int nr_states; void* type; TYPE_3__* states; void** gflags; int startup_delay; TYPE_2__* init_data; int supply_name; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;
struct TYPE_6__ {scalar_t__ gpios; scalar_t__ value; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ constraints; } ;


 int EINVAL ;
 int ENOMEM ;
 struct gpio_regulator_config* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 void* GPIOD_OUT_HIGH ;
 void* GPIOD_OUT_LOW ;
 void* REGULATOR_CURRENT ;
 void* REGULATOR_VOLTAGE ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,char const*) ;
 TYPE_3__* devm_kcalloc (struct device*,int,int,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int gpiod_count (struct device*,int *) ;
 TYPE_2__* of_get_regulator_init_data (struct device*,struct device_node*,struct regulator_desc const*) ;
 int of_property_count_u32_elems (struct device_node*,char*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u32_index (struct device_node*,char*,int,scalar_t__*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static struct gpio_regulator_config *
of_get_gpio_regulator_config(struct device *dev, struct device_node *np,
        const struct regulator_desc *desc)
{
 struct gpio_regulator_config *config;
 const char *regtype;
 int proplen, i;
 int ngpios;
 int ret;

 config = devm_kzalloc(dev,
   sizeof(struct gpio_regulator_config),
   GFP_KERNEL);
 if (!config)
  return ERR_PTR(-ENOMEM);

 config->init_data = of_get_regulator_init_data(dev, np, desc);
 if (!config->init_data)
  return ERR_PTR(-EINVAL);

 config->supply_name = config->init_data->constraints.name;

 if (of_property_read_bool(np, "enable-at-boot"))
  config->enabled_at_boot = 1;

 of_property_read_u32(np, "startup-delay-us", &config->startup_delay);


 ngpios = gpiod_count(dev, ((void*)0));
 if (ngpios > 0) {
  config->gflags = devm_kzalloc(dev,
           sizeof(enum gpiod_flags)
           * ngpios,
           GFP_KERNEL);
  if (!config->gflags)
   return ERR_PTR(-ENOMEM);

  for (i = 0; i < ngpios; i++) {
   u32 val;

   ret = of_property_read_u32_index(np, "gpios-states", i,
        &val);


   if (ret)
    config->gflags[i] = GPIOD_OUT_HIGH;
   else
    config->gflags[i] =
     val ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
  }
 }
 config->ngpios = ngpios;


 proplen = of_property_count_u32_elems(np, "states");
 if (proplen < 0) {
  dev_err(dev, "No 'states' property found\n");
  return ERR_PTR(-EINVAL);
 }

 config->states = devm_kcalloc(dev,
    proplen / 2,
    sizeof(struct gpio_regulator_state),
    GFP_KERNEL);
 if (!config->states)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < proplen / 2; i++) {
  of_property_read_u32_index(np, "states", i * 2,
        &config->states[i].value);
  of_property_read_u32_index(np, "states", i * 2 + 1,
        &config->states[i].gpios);
 }
 config->nr_states = i;

 config->type = REGULATOR_VOLTAGE;
 ret = of_property_read_string(np, "regulator-type", &regtype);
 if (ret >= 0) {
  if (!strncmp("voltage", regtype, 7))
   config->type = REGULATOR_VOLTAGE;
  else if (!strncmp("current", regtype, 7))
   config->type = REGULATOR_CURRENT;
  else
   dev_warn(dev, "Unknown regulator-type '%s'\n",
     regtype);
 }

 return config;
}
