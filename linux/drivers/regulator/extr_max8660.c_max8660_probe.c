
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {struct max8660* driver_data; struct device_node* of_node; TYPE_2__* init_data; struct device* dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct max8660_platform_data {int num_subdevs; TYPE_3__* subdevs; scalar_t__ en34_is_high; } ;
struct max8660 {int* shadow_regs; struct i2c_client* client; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;
typedef int of_node ;
struct TYPE_11__ {int disable; int enable; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int id; TYPE_2__* platform_data; int name; } ;
struct TYPE_7__ {int boot_on; } ;
struct TYPE_8__ {TYPE_1__ constraints; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 size_t MAX8660_ADTV1 ;
 size_t MAX8660_ADTV2 ;
 size_t MAX8660_MDTV1 ;
 size_t MAX8660_MDTV2 ;
 size_t MAX8660_OVER1 ;
 size_t MAX8660_OVER2 ;
 size_t MAX8660_SDTV1 ;
 size_t MAX8660_SDTV2 ;





 int MAX8660_V_END ;
 unsigned long MAX8661 ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (struct device*,char*,...) ;
 struct max8660_platform_data* dev_get_platdata (struct device*) ;
 struct max8660* devm_kzalloc (struct device*,int,int ) ;
 struct regulator_dev* devm_regulator_register (struct device*,TYPE_4__*,struct regulator_config*) ;
 int i2c_set_clientdata (struct i2c_client*,struct max8660*) ;
 int max8660_dcdc_disable ;
 int max8660_dcdc_enable ;
 TYPE_5__ max8660_dcdc_ops ;
 int max8660_dt_ids ;
 int max8660_pdata_from_dt (struct device*,struct device_node**,struct max8660_platform_data*) ;
 TYPE_4__* max8660_reg ;
 int memset (struct device_node**,int ,int) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_match_ptr (int ) ;

__attribute__((used)) static int max8660_probe(struct i2c_client *client,
       const struct i2c_device_id *i2c_id)
{
 struct device *dev = &client->dev;
 struct max8660_platform_data pdata_of, *pdata = dev_get_platdata(dev);
 struct regulator_config config = { };
 struct max8660 *max8660;
 int boot_on, i, id, ret = -EINVAL;
 struct device_node *of_node[MAX8660_V_END];
 unsigned long type;

 if (dev->of_node && !pdata) {
  const struct of_device_id *id;

  id = of_match_device(of_match_ptr(max8660_dt_ids), dev);
  if (!id)
   return -ENODEV;

  ret = max8660_pdata_from_dt(dev, of_node, &pdata_of);
  if (ret < 0)
   return ret;

  pdata = &pdata_of;
  type = (unsigned long) id->data;
 } else {
  type = i2c_id->driver_data;
  memset(of_node, 0, sizeof(of_node));
 }

 if (pdata->num_subdevs > MAX8660_V_END) {
  dev_err(dev, "Too many regulators found!\n");
  return -EINVAL;
 }

 max8660 = devm_kzalloc(dev, sizeof(struct max8660), GFP_KERNEL);
 if (!max8660)
  return -ENOMEM;

 max8660->client = client;

 if (pdata->en34_is_high) {

  max8660->shadow_regs[MAX8660_OVER1] = 5;
 } else {

  max8660_dcdc_ops.enable = max8660_dcdc_enable;
  max8660_dcdc_ops.disable = max8660_dcdc_disable;
 }






 max8660->shadow_regs[MAX8660_ADTV1] =
  max8660->shadow_regs[MAX8660_ADTV2] =
  max8660->shadow_regs[MAX8660_SDTV1] =
  max8660->shadow_regs[MAX8660_SDTV2] = 0x1b;
 max8660->shadow_regs[MAX8660_MDTV1] =
  max8660->shadow_regs[MAX8660_MDTV2] = 0x04;

 for (i = 0; i < pdata->num_subdevs; i++) {

  if (!pdata->subdevs[i].platform_data)
   boot_on = 0;
  else
   boot_on = pdata->subdevs[i].platform_data->constraints.boot_on;

  switch (pdata->subdevs[i].id) {
  case 132:
   if (boot_on)
    max8660->shadow_regs[MAX8660_OVER1] |= 1;
   break;

  case 131:
   if (boot_on)
    max8660->shadow_regs[MAX8660_OVER1] |= 4;
   break;

  case 130:
   break;

  case 129:
   if (boot_on)
    max8660->shadow_regs[MAX8660_OVER2] |= 2;
   break;

  case 128:
   if (type == MAX8661) {
    dev_err(dev, "Regulator not on this chip!\n");
    return -EINVAL;
   }

   if (boot_on)
    max8660->shadow_regs[MAX8660_OVER2] |= 4;
   break;

  default:
   dev_err(dev, "invalid regulator %s\n",
     pdata->subdevs[i].name);
   return ret;
  }
 }


 for (i = 0; i < pdata->num_subdevs; i++) {
  struct regulator_dev *rdev;

  id = pdata->subdevs[i].id;

  config.dev = dev;
  config.init_data = pdata->subdevs[i].platform_data;
  config.of_node = of_node[i];
  config.driver_data = max8660;

  rdev = devm_regulator_register(&client->dev,
        &max8660_reg[id], &config);
  if (IS_ERR(rdev)) {
   dev_err(&client->dev, "failed to register %s\n",
    max8660_reg[id].name);
   return PTR_ERR(rdev);
  }
 }

 i2c_set_clientdata(client, max8660);
 return 0;
}
