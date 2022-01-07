
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_contrast; } ;
struct lcd_device {TYPE_1__ props; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct lcd_device* to_lcd_device (struct device*) ;

__attribute__((used)) static ssize_t max_contrast_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct lcd_device *ld = to_lcd_device(dev);

 return sprintf(buf, "%d\n", ld->props.max_contrast);
}
