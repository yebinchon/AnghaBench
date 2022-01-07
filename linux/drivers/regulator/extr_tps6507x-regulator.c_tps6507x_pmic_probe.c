
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tps_info {char* name; int table; int table_len; int defdcdc_default; } ;
struct tps6507x_reg_platform_data {int defdcdc_default; } ;
struct tps6507x_pmic {TYPE_2__* desc; struct tps_info** info; struct tps6507x_dev* mfd; int io_lock; } ;
struct tps6507x_dev {struct tps6507x_pmic* pmic; int dev; } ;
struct tps6507x_board {struct regulator_init_data* tps6507x_pmic_init_data; } ;
struct regulator_init_data {struct tps6507x_reg_platform_data* driver_data; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct tps6507x_pmic* driver_data; struct regulator_init_data* init_data; int dev; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {int name; TYPE_1__ dev; } ;
struct TYPE_5__ {char* name; int id; int owner; int type; int * ops; int volt_table; int n_voltages; int of_parse_cb; void* regulators_node; void* of_match; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int TPS6507X_NUM_REGULATOR ;
 int dev_err (int ,char*,int ) ;
 struct tps6507x_dev* dev_get_drvdata (int ) ;
 struct tps6507x_board* dev_get_platdata (int ) ;
 struct tps6507x_pmic* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,TYPE_2__*,struct regulator_config*) ;
 int mutex_init (int *) ;
 void* of_match_ptr (char*) ;
 int platform_set_drvdata (struct platform_device*,struct tps6507x_dev*) ;
 int tps6507x_pmic_of_parse_cb ;
 int tps6507x_pmic_ops ;
 struct tps_info* tps6507x_pmic_regs ;

__attribute__((used)) static int tps6507x_pmic_probe(struct platform_device *pdev)
{
 struct tps6507x_dev *tps6507x_dev = dev_get_drvdata(pdev->dev.parent);
 struct tps_info *info = &tps6507x_pmic_regs[0];
 struct regulator_config config = { };
 struct regulator_init_data *init_data = ((void*)0);
 struct regulator_dev *rdev;
 struct tps6507x_pmic *tps;
 struct tps6507x_board *tps_board;
 int i;






 tps_board = dev_get_platdata(tps6507x_dev->dev);
 if (tps_board)
  init_data = tps_board->tps6507x_pmic_init_data;

 tps = devm_kzalloc(&pdev->dev, sizeof(*tps), GFP_KERNEL);
 if (!tps)
  return -ENOMEM;

 mutex_init(&tps->io_lock);


 tps->mfd = tps6507x_dev;

 for (i = 0; i < TPS6507X_NUM_REGULATOR; i++, info++) {

  tps->info[i] = info;
  if (init_data && init_data[i].driver_data) {
   struct tps6507x_reg_platform_data *data =
     init_data[i].driver_data;
   info->defdcdc_default = data->defdcdc_default;
  }

  tps->desc[i].name = info->name;
  tps->desc[i].of_match = of_match_ptr(info->name);
  tps->desc[i].regulators_node = of_match_ptr("regulators");
  tps->desc[i].of_parse_cb = tps6507x_pmic_of_parse_cb;
  tps->desc[i].id = i;
  tps->desc[i].n_voltages = info->table_len;
  tps->desc[i].volt_table = info->table;
  tps->desc[i].ops = &tps6507x_pmic_ops;
  tps->desc[i].type = REGULATOR_VOLTAGE;
  tps->desc[i].owner = THIS_MODULE;

  config.dev = tps6507x_dev->dev;
  config.init_data = init_data;
  config.driver_data = tps;

  rdev = devm_regulator_register(&pdev->dev, &tps->desc[i],
            &config);
  if (IS_ERR(rdev)) {
   dev_err(tps6507x_dev->dev,
    "failed to register %s regulator\n",
    pdev->name);
   return PTR_ERR(rdev);
  }
 }

 tps6507x_dev->pmic = tps;
 platform_set_drvdata(pdev, tps6507x_dev);

 return 0;
}
