
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int mutex; int has_cabc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int ARRAY_SIZE (char**) ;
 size_t EINVAL ;
 char** cabc_modes ;
 struct panel_drv_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_cabc_mode (struct panel_drv_data*,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static ssize_t store_cabc_mode(struct device *dev,
  struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < ARRAY_SIZE(cabc_modes); i++) {
  const char *mode_str = cabc_modes[i];
  int cmp_len = strlen(mode_str);

  if (count > 0 && buf[count - 1] == '\n')
   count--;
  if (count != cmp_len)
   continue;

  if (strncmp(buf, mode_str, cmp_len) == 0)
   break;
 }

 if (i == ARRAY_SIZE(cabc_modes))
  return -EINVAL;

 if (!ddata->has_cabc && i != 0)
  return -EINVAL;

 mutex_lock(&ddata->mutex);
 set_cabc_mode(ddata, i);
 mutex_unlock(&ddata->mutex);

 return count;
}
