
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EIO ;
 scalar_t__ isl1208_i2c_set_usr (int ,int) ;
 int sscanf (char const*,char*,int*) ;
 int to_i2c_client (int ) ;

__attribute__((used)) static ssize_t
isl1208_sysfs_store_usr(struct device *dev,
   struct device_attribute *attr,
   const char *buf, size_t count)
{
 int usr = -1;

 if (buf[0] == '0' && (buf[1] == 'x' || buf[1] == 'X')) {
  if (sscanf(buf, "%x", &usr) != 1)
   return -EINVAL;
 } else {
  if (sscanf(buf, "%d", &usr) != 1)
   return -EINVAL;
 }

 if (usr < 0 || usr > 0xffff)
  return -EINVAL;

 if (isl1208_i2c_set_usr(to_i2c_client(dev->parent), usr))
  return -EIO;

 return count;
}
