
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_init_data {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct isl_pmic* driver_data; struct regulator_init_data* init_data; int * dev; } ;
struct isl_pmic {int mtx; struct i2c_client* client; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int adapter; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (int *,char*,int ) ;
 struct regulator_init_data* dev_get_platdata (int *) ;
 struct isl_pmic* devm_kzalloc (int *,int,int ) ;
 struct regulator_dev* devm_regulator_register (int *,int *,struct regulator_config*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct isl_pmic*) ;
 int * isl_rd ;
 int mutex_init (int *) ;

__attribute__((used)) static int isl6271a_probe(struct i2c_client *i2c,
         const struct i2c_device_id *id)
{
 struct regulator_dev *rdev;
 struct regulator_config config = { };
 struct regulator_init_data *init_data = dev_get_platdata(&i2c->dev);
 struct isl_pmic *pmic;
 int i;

 if (!i2c_check_functionality(i2c->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 pmic = devm_kzalloc(&i2c->dev, sizeof(struct isl_pmic), GFP_KERNEL);
 if (!pmic)
  return -ENOMEM;

 pmic->client = i2c;

 mutex_init(&pmic->mtx);

 for (i = 0; i < 3; i++) {
  config.dev = &i2c->dev;
  if (i == 0)
   config.init_data = init_data;
  else
   config.init_data = ((void*)0);
  config.driver_data = pmic;

  rdev = devm_regulator_register(&i2c->dev, &isl_rd[i], &config);
  if (IS_ERR(rdev)) {
   dev_err(&i2c->dev, "failed to register %s\n", id->name);
   return PTR_ERR(rdev);
  }
 }

 i2c_set_clientdata(i2c, pmic);

 return 0;
}
