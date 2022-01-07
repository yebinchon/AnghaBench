
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {unsigned int* gamma; int spi; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct panel_drv_data* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int tpo_td043_write_gamma (int ,unsigned int*) ;

__attribute__((used)) static ssize_t tpo_td043_gamma_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dev);
 unsigned int g[12];
 int ret;
 int i;

 ret = sscanf(buf, "%u %u %u %u %u %u %u %u %u %u %u %u",
   &g[0], &g[1], &g[2], &g[3], &g[4], &g[5],
   &g[6], &g[7], &g[8], &g[9], &g[10], &g[11]);

 if (ret != 12)
  return -EINVAL;

 for (i = 0; i < 12; i++)
  ddata->gamma[i] = g[i];

 tpo_td043_write_gamma(ddata->spi, ddata->gamma);

 return count;
}
