
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps6524x {TYPE_1__* desc; int lock; struct spi_device* spi; struct device* dev; } ;
struct supply_info {int voltages; int n_voltages; int name; } ;
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct regulator_init_data {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct tps6524x* driver_data; struct regulator_init_data* init_data; struct device* dev; } ;
struct TYPE_2__ {int id; int owner; int type; int * ops; int volt_table; int n_voltages; int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int N_REGULATORS ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 struct regulator_init_data* dev_get_platdata (struct device*) ;
 struct tps6524x* devm_kzalloc (struct device*,int,int ) ;
 struct regulator_dev* devm_regulator_register (struct device*,TYPE_1__*,struct regulator_config*) ;
 int memset (struct tps6524x*,int ,int) ;
 int mutex_init (int *) ;
 int regulator_ops ;
 int spi_set_drvdata (struct spi_device*,struct tps6524x*) ;
 struct supply_info* supply_info ;

__attribute__((used)) static int pmic_probe(struct spi_device *spi)
{
 struct tps6524x *hw;
 struct device *dev = &spi->dev;
 const struct supply_info *info = supply_info;
 struct regulator_init_data *init_data;
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 int i;

 init_data = dev_get_platdata(dev);
 if (!init_data) {
  dev_err(dev, "could not find regulator platform data\n");
  return -EINVAL;
 }

 hw = devm_kzalloc(&spi->dev, sizeof(struct tps6524x), GFP_KERNEL);
 if (!hw)
  return -ENOMEM;

 spi_set_drvdata(spi, hw);

 memset(hw, 0, sizeof(struct tps6524x));
 hw->dev = dev;
 hw->spi = spi;
 mutex_init(&hw->lock);

 for (i = 0; i < N_REGULATORS; i++, info++, init_data++) {
  hw->desc[i].name = info->name;
  hw->desc[i].id = i;
  hw->desc[i].n_voltages = info->n_voltages;
  hw->desc[i].volt_table = info->voltages;
  hw->desc[i].ops = &regulator_ops;
  hw->desc[i].type = REGULATOR_VOLTAGE;
  hw->desc[i].owner = THIS_MODULE;

  config.dev = dev;
  config.init_data = init_data;
  config.driver_data = hw;

  rdev = devm_regulator_register(dev, &hw->desc[i], &config);
  if (IS_ERR(rdev))
   return PTR_ERR(rdev);
 }

 return 0;
}
