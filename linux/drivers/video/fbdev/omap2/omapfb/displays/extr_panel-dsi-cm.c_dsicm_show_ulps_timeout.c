
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {unsigned int ulps_timeout; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct panel_drv_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t dsicm_show_ulps_timeout(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dev);
 unsigned t;

 mutex_lock(&ddata->lock);
 t = ddata->ulps_timeout;
 mutex_unlock(&ddata->lock);

 return snprintf(buf, PAGE_SIZE, "%u\n", t);
}
