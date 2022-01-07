
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_i2c_phy {int irq_skip; int ndev; struct i2c_client* i2c_dev; int gpio_fw_wake; int gpio_en; int mode; int mutex; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_HIGH ;
 int GPIOF_OUT_INIT_LOW ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int S3FWRN5_I2C_DRIVER_NAME ;
 int S3FWRN5_I2C_MAX_PAYLOAD ;
 int S3FWRN5_MODE_COLD ;
 int devm_gpio_request_one (int *,int ,int ,char*) ;
 struct s3fwrn5_i2c_phy* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,struct s3fwrn5_i2c_phy*) ;
 int i2c_phy_ops ;
 int i2c_set_clientdata (struct i2c_client*,struct s3fwrn5_i2c_phy*) ;
 int mutex_init (int *) ;
 int s3fwrn5_i2c_irq_thread_fn ;
 int s3fwrn5_i2c_parse_dt (struct i2c_client*) ;
 int s3fwrn5_probe (int *,struct s3fwrn5_i2c_phy*,int *,int *,int ) ;
 int s3fwrn5_remove (int ) ;

__attribute__((used)) static int s3fwrn5_i2c_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct s3fwrn5_i2c_phy *phy;
 int ret;

 phy = devm_kzalloc(&client->dev, sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return -ENOMEM;

 mutex_init(&phy->mutex);
 phy->mode = S3FWRN5_MODE_COLD;
 phy->irq_skip = 1;

 phy->i2c_dev = client;
 i2c_set_clientdata(client, phy);

 ret = s3fwrn5_i2c_parse_dt(client);
 if (ret < 0)
  return ret;

 ret = devm_gpio_request_one(&phy->i2c_dev->dev, phy->gpio_en,
  GPIOF_OUT_INIT_HIGH, "s3fwrn5_en");
 if (ret < 0)
  return ret;

 ret = devm_gpio_request_one(&phy->i2c_dev->dev, phy->gpio_fw_wake,
  GPIOF_OUT_INIT_LOW, "s3fwrn5_fw_wake");
 if (ret < 0)
  return ret;

 ret = s3fwrn5_probe(&phy->ndev, phy, &phy->i2c_dev->dev, &i2c_phy_ops,
  S3FWRN5_I2C_MAX_PAYLOAD);
 if (ret < 0)
  return ret;

 ret = devm_request_threaded_irq(&client->dev, phy->i2c_dev->irq, ((void*)0),
  s3fwrn5_i2c_irq_thread_fn, IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
  S3FWRN5_I2C_DRIVER_NAME, phy);
 if (ret)
  s3fwrn5_remove(phy->ndev);

 return ret;
}
