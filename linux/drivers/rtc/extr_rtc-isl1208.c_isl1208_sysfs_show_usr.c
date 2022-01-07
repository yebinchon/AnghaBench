
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int isl1208_i2c_get_usr (int ) ;
 int sprintf (char*,char*,int) ;
 int to_i2c_client (int ) ;

__attribute__((used)) static ssize_t
isl1208_sysfs_show_usr(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 int usr = isl1208_i2c_get_usr(to_i2c_client(dev->parent));
 if (usr < 0)
  return usr;

 return sprintf(buf, "0x%.4x\n", usr);
}
