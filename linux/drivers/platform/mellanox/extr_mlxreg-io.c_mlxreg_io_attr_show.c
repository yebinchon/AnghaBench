
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlxreg_io_priv_data {TYPE_1__* pdata; } ;
struct mlxreg_core_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int regmap; struct mlxreg_core_data* data; } ;


 struct mlxreg_io_priv_data* dev_get_drvdata (struct device*) ;
 int mlxreg_io_get_reg (int ,struct mlxreg_core_data*,int ,int,int*) ;
 int sprintf (char*,char*,int) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
mlxreg_io_attr_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct mlxreg_io_priv_data *priv = dev_get_drvdata(dev);
 int index = to_sensor_dev_attr(attr)->index;
 struct mlxreg_core_data *data = priv->pdata->data + index;
 u32 regval = 0;
 int ret;

 ret = mlxreg_io_get_reg(priv->pdata->regmap, data, 0, 1, &regval);
 if (ret)
  goto access_error;

 return sprintf(buf, "%u\n", regval);

access_error:
 return ret;
}
