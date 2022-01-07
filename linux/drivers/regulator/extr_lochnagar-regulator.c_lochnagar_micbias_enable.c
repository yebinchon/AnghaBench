
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct lochnagar {int analogue_config_lock; } ;


 int lochnagar_update_config (struct lochnagar*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct lochnagar* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_enable_regmap (struct regulator_dev*) ;

__attribute__((used)) static int lochnagar_micbias_enable(struct regulator_dev *rdev)
{
 struct lochnagar *lochnagar = rdev_get_drvdata(rdev);
 int ret;

 mutex_lock(&lochnagar->analogue_config_lock);

 ret = regulator_enable_regmap(rdev);
 if (ret < 0)
  goto err;

 ret = lochnagar_update_config(lochnagar);

err:
 mutex_unlock(&lochnagar->analogue_config_lock);

 return ret;
}
