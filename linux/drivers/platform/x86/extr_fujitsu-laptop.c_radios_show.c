
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fujitsu_laptop {int flags_supported; int flags_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FLAG_RFKILL ;
 struct fujitsu_laptop* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t radios_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct fujitsu_laptop *priv = dev_get_drvdata(dev);

 if (!(priv->flags_supported & FLAG_RFKILL))
  return sprintf(buf, "unknown\n");
 if (priv->flags_state & FLAG_RFKILL)
  return sprintf(buf, "on\n");
 else
  return sprintf(buf, "killed\n");
}
