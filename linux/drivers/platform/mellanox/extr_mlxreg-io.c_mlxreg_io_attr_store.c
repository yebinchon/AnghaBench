
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mlxreg_io_priv_data {TYPE_2__* pdev; TYPE_1__* pdata; } ;
struct mlxreg_core_data {int reg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int regmap; struct mlxreg_core_data* data; } ;


 int EINVAL ;
 size_t MLXREG_IO_ATT_SIZE ;
 int dev_err (int *,char*) ;
 struct mlxreg_io_priv_data* dev_get_drvdata (struct device*) ;
 int kstrtou32 (char const*,size_t,int *) ;
 int mlxreg_io_get_reg (int ,struct mlxreg_core_data*,int ,int,int *) ;
 int regmap_write (int ,int ,int ) ;
 TYPE_3__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
mlxreg_io_attr_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t len)
{
 struct mlxreg_io_priv_data *priv = dev_get_drvdata(dev);
 int index = to_sensor_dev_attr(attr)->index;
 struct mlxreg_core_data *data = priv->pdata->data + index;
 u32 input_val, regval;
 int ret;

 if (len > MLXREG_IO_ATT_SIZE)
  return -EINVAL;


 ret = kstrtou32(buf, len, &input_val);
 if (ret)
  return ret;

 ret = mlxreg_io_get_reg(priv->pdata->regmap, data, input_val, 0,
    &regval);
 if (ret)
  goto access_error;

 ret = regmap_write(priv->pdata->regmap, data->reg, regval);
 if (ret)
  goto access_error;

 return len;

access_error:
 dev_err(&priv->pdev->dev, "Bus access error\n");
 return ret;
}
