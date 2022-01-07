
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int to_i2c_client (struct device*) ;
 int x1205_get_dtrim (int ,int*) ;

__attribute__((used)) static ssize_t x1205_sysfs_show_dtrim(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int err, dtrim;

 err = x1205_get_dtrim(to_i2c_client(dev), &dtrim);
 if (err)
  return err;

 return sprintf(buf, "%d ppm\n", dtrim);
}
