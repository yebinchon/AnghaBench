
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
 int get_cabc_mode (struct panel_drv_data*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static ssize_t show_cabc_mode(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dev);
 const char *mode_str;
 int mode;
 int len;

 if (!ddata->has_cabc)
  mode = 0;
 else
  mode = get_cabc_mode(ddata);
 mode_str = "unknown";
 if (mode >= 0 && mode < ARRAY_SIZE(cabc_modes))
  mode_str = cabc_modes[mode];
 len = snprintf(buf, PAGE_SIZE, "%s\n", mode_str);

 return len < PAGE_SIZE - 1 ? len : PAGE_SIZE - 1;
}
