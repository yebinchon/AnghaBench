
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int __raw_readl (int ) ;
 int sprintf (char*,char*,int) ;
 int uimask ;

__attribute__((used)) static ssize_t
show_intc_userimask(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", (__raw_readl(uimask) >> 4) & 0xf);
}
