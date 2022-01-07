
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int isl1208_i2c_get_dtr (int ) ;
 int sprintf (char*,char*,int) ;
 int to_i2c_client (int ) ;

__attribute__((used)) static ssize_t
isl1208_sysfs_show_dtrim(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int dtr = isl1208_i2c_get_dtr(to_i2c_client(dev->parent));
 if (dtr < 0)
  return dtr;

 return sprintf(buf, "%d ppm\n", dtr - 100);
}
