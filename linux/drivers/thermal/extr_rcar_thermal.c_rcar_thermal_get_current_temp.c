
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_thermal_priv {int ctemp; int lock; TYPE_1__* chip; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int ctemp_bands; } ;


 int EIO ;
 int MCELSIUS (int) ;
 int dev_err (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct device* rcar_priv_to_dev (struct rcar_thermal_priv*) ;
 int rcar_thermal_update_temp (struct rcar_thermal_priv*) ;

__attribute__((used)) static int rcar_thermal_get_current_temp(struct rcar_thermal_priv *priv,
      int *temp)
{
 int tmp;
 int ret;

 ret = rcar_thermal_update_temp(priv);
 if (ret < 0)
  return ret;

 mutex_lock(&priv->lock);
 if (priv->chip->ctemp_bands == 1)
  tmp = MCELSIUS((priv->ctemp * 5) - 65);
 else if (priv->ctemp < 24)
  tmp = MCELSIUS(((priv->ctemp * 55) - 720) / 10);
 else
  tmp = MCELSIUS((priv->ctemp * 5) - 60);
 mutex_unlock(&priv->lock);

 if ((tmp < MCELSIUS(-45)) || (tmp > MCELSIUS(125))) {
  struct device *dev = rcar_priv_to_dev(priv);

  dev_err(dev, "it couldn't measure temperature correctly\n");
  return -EIO;
 }

 *temp = tmp;

 return 0;
}
