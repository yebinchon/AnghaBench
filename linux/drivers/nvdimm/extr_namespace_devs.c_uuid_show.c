
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * namespace_to_uuid (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t uuid_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 u8 *uuid = namespace_to_uuid(dev);

 if (IS_ERR(uuid))
  return PTR_ERR(uuid);
 if (uuid)
  return sprintf(buf, "%pUb\n", uuid);
 return sprintf(buf, "\n");
}
