
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BQ32K_CFG2 ;
 int BQ32K_TCFE ;
 int bq32k_read (struct device*,int*,int ,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t bq32k_sysfs_show_tricklecharge_bypass(struct device *dev,
            struct device_attribute *attr,
            char *buf)
{
 int reg, error;

 error = bq32k_read(dev, &reg, BQ32K_CFG2, 1);
 if (error)
  return error;

 return sprintf(buf, "%d\n", (reg & BQ32K_TCFE) ? 1 : 0);
}
