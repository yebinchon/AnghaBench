
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int vmirror; int hmirror; int spi; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct panel_drv_data* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int tpo_td043_write_mirror (int ,int ,int) ;

__attribute__((used)) static ssize_t tpo_td043_vmirror_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dev);
 int val;
 int ret;

 ret = kstrtoint(buf, 0, &val);
 if (ret < 0)
  return ret;

 val = !!val;

 ret = tpo_td043_write_mirror(ddata->spi, ddata->hmirror, val);
 if (ret < 0)
  return ret;

 ddata->vmirror = val;

 return count;
}
