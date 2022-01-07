
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CMD_GET_EC_REV ;
 int get_info (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t build_revision_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 return get_info(dev, buf, CMD_GET_EC_REV);
}
