
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int) ;
 int to_i2c_client (struct device*) ;
 int x1205_get_atrim (int ,int*) ;

__attribute__((used)) static ssize_t x1205_sysfs_show_atrim(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int err, atrim;

 err = x1205_get_atrim(to_i2c_client(dev), &atrim);
 if (err)
  return err;

 return sprintf(buf, "%d.%02d pF\n", atrim / 1000, atrim % 1000);
}
