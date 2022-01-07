
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct isl_pmic {int mtx; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isl_pmic* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int isl6271a_get_voltage_sel(struct regulator_dev *dev)
{
 struct isl_pmic *pmic = rdev_get_drvdata(dev);
 int idx;

 mutex_lock(&pmic->mtx);

 idx = i2c_smbus_read_byte(pmic->client);
 if (idx < 0)
  dev_err(&pmic->client->dev, "Error getting voltage\n");

 mutex_unlock(&pmic->mtx);
 return idx;
}
