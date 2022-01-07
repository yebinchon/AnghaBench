
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {long mode; int spi; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 long TPO_R02_NCLK_RISING ;
 struct panel_drv_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int ,long*) ;
 int tpo_td043_write (int ,int,long) ;

__attribute__((used)) static ssize_t tpo_td043_mode_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dev);
 long val;
 int ret;

 ret = kstrtol(buf, 0, &val);
 if (ret != 0 || val & ~7)
  return -EINVAL;

 ddata->mode = val;

 val |= TPO_R02_NCLK_RISING;
 tpo_td043_write(ddata->spi, 2, val);

 return count;
}
