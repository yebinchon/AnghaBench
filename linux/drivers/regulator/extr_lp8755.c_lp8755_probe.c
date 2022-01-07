
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8755_platform_data {int mphase; } ;
struct lp8755_chip {int irq; struct lp8755_platform_data* pdata; int * dev; int mphase; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; int adapter; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (int ) ;
 int LP8755_BUCK_MAX ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct lp8755_platform_data* dev_get_platdata (int *) ;
 void* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lp8755_chip*) ;
 int lp8755_init_data (struct lp8755_chip*) ;
 int lp8755_int_config (struct lp8755_chip*) ;
 int lp8755_regmap ;
 int lp8755_regulator_init (struct lp8755_chip*) ;
 int lp8755_write (struct lp8755_chip*,int,int) ;

__attribute__((used)) static int lp8755_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret, icnt;
 struct lp8755_chip *pchip;
 struct lp8755_platform_data *pdata = dev_get_platdata(&client->dev);

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "i2c functionality check fail.\n");
  return -EOPNOTSUPP;
 }

 pchip = devm_kzalloc(&client->dev,
        sizeof(struct lp8755_chip), GFP_KERNEL);
 if (!pchip)
  return -ENOMEM;

 pchip->dev = &client->dev;
 pchip->regmap = devm_regmap_init_i2c(client, &lp8755_regmap);
 if (IS_ERR(pchip->regmap)) {
  ret = PTR_ERR(pchip->regmap);
  dev_err(&client->dev, "fail to allocate regmap %d\n", ret);
  return ret;
 }
 i2c_set_clientdata(client, pchip);

 if (pdata != ((void*)0)) {
  pchip->pdata = pdata;
  pchip->mphase = pdata->mphase;
 } else {
  pchip->pdata = devm_kzalloc(pchip->dev,
         sizeof(struct lp8755_platform_data),
         GFP_KERNEL);
  if (!pchip->pdata)
   return -ENOMEM;
  ret = lp8755_init_data(pchip);
  if (ret < 0) {
   dev_err(&client->dev, "fail to initialize chip\n");
   return ret;
  }
 }

 ret = lp8755_regulator_init(pchip);
 if (ret < 0) {
  dev_err(&client->dev, "fail to initialize regulators\n");
  goto err;
 }

 pchip->irq = client->irq;
 ret = lp8755_int_config(pchip);
 if (ret < 0) {
  dev_err(&client->dev, "fail to irq config\n");
  goto err;
 }

 return ret;

err:

 for (icnt = 0; icnt < LP8755_BUCK_MAX; icnt++)
  lp8755_write(pchip, icnt, 0x00);

 return ret;
}
