
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_4__ {int class; int retries; TYPE_3__ dev; int name; int * algo; int owner; } ;
struct i2c_device {unsigned long smba; TYPE_1__ adapter; int features; } ;


 int ENOMEM ;
 int ENXIO ;
 int FEATURE_BLOCK_BUFFER ;
 int FEATURE_I2C_BLOCK_READ ;
 int FEATURE_IDF ;
 int FEATURE_SMBUS_PEC ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 int IORESOURCE_MEM ;
 int THIS_MODULE ;
 int dev_err (TYPE_3__*,char*) ;
 scalar_t__ devm_ioremap_nocache (int *,int ,int ) ;
 struct i2c_device* devm_kzalloc (int *,int,int ) ;
 int i2c_add_adapter (TYPE_1__*) ;
 int i2c_set_adapdata (TYPE_1__*,struct i2c_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_device*) ;
 int resource_size (struct resource*) ;
 int smbus_algorithm ;
 int snprintf (int ,int,char*) ;

__attribute__((used)) static int pi2c_probe(struct platform_device *pldev)
{
 int err;
 struct i2c_device *priv;
 struct resource *res;

 priv = devm_kzalloc(&pldev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 i2c_set_adapdata(&priv->adapter, priv);
 priv->adapter.owner = THIS_MODULE;
 priv->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 priv->adapter.algo = &smbus_algorithm;

 res = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENXIO;

 priv->smba = (unsigned long)devm_ioremap_nocache(&pldev->dev,
        res->start,
        resource_size(res));
 if (!priv->smba)
  return -ENOMEM;

 platform_set_drvdata(pldev, priv);

 priv->features |= FEATURE_IDF;
 priv->features |= FEATURE_I2C_BLOCK_READ;
 priv->features |= FEATURE_SMBUS_PEC;
 priv->features |= FEATURE_BLOCK_BUFFER;




 priv->adapter.dev.parent = &pldev->dev;


 priv->adapter.retries = 3;


 snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter");

 err = i2c_add_adapter(&priv->adapter);
 if (err) {
  dev_err(&priv->adapter.dev, "Failed to add SMBus adapter\n");
  return err;
 }

 return 0;
}
