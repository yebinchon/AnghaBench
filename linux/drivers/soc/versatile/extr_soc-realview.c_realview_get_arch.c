
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* realview_arch_str (int ) ;
 int realview_coreid ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t realview_get_arch(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 return sprintf(buf, "%s\n", realview_arch_str(realview_coreid));
}
