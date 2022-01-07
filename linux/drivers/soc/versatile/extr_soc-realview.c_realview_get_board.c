
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int realview_coreid ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t realview_get_board(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 return sprintf(buf, "HBI-%03x\n", ((realview_coreid >> 16) & 0xfff));
}
