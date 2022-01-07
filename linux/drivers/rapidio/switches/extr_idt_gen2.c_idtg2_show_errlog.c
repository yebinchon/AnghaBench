
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IDT_ERR_RD ;
 int PAGE_SIZE ;
 int rio_read_config_32 (struct rio_dev*,int ,int*) ;
 int snprintf (char*,int,char*,int) ;
 struct rio_dev* to_rio_dev (struct device*) ;

__attribute__((used)) static ssize_t
idtg2_show_errlog(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct rio_dev *rdev = to_rio_dev(dev);
 ssize_t len = 0;
 u32 regval;

 while (!rio_read_config_32(rdev, IDT_ERR_RD, &regval)) {
  if (!regval)
   break;
  len += snprintf(buf + len, PAGE_SIZE - len,
     "%08x\n", regval);
  if (len >= (PAGE_SIZE - 10))
   break;
 }

 return len;
}
