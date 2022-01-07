
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsens_sensor {char offset; } ;
struct tsens_priv {int num_sensors; int dev; struct tsens_sensor* sensor; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int kfree (char*) ;
 char* qfprom_read (int ,char*) ;

__attribute__((used)) static int calibrate_8960(struct tsens_priv *priv)
{
 int i;
 char *data;

 ssize_t num_read = priv->num_sensors;
 struct tsens_sensor *s = priv->sensor;

 data = qfprom_read(priv->dev, "calib");
 if (IS_ERR(data))
  data = qfprom_read(priv->dev, "calib_backup");
 if (IS_ERR(data))
  return PTR_ERR(data);

 for (i = 0; i < num_read; i++, s++)
  s->offset = data[i];

 kfree(data);

 return 0;
}
