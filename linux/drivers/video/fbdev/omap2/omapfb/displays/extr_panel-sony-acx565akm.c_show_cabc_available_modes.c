
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int has_cabc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (char**) ;
 int PAGE_SIZE ;
 char** cabc_modes ;
 struct panel_drv_data* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int,char*,char*,...) ;

__attribute__((used)) static ssize_t show_cabc_available_modes(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dev);
 int len;
 int i;

 if (!ddata->has_cabc)
  return snprintf(buf, PAGE_SIZE, "%s\n", cabc_modes[0]);

 for (i = 0, len = 0;
      len < PAGE_SIZE && i < ARRAY_SIZE(cabc_modes); i++)
  len += snprintf(&buf[len], PAGE_SIZE - len, "%s%s%s",
   i ? " " : "", cabc_modes[i],
   i == ARRAY_SIZE(cabc_modes) - 1 ? "\n" : "");

 return len < PAGE_SIZE ? len : PAGE_SIZE - 1;
}
