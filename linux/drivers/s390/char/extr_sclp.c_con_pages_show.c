
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int sclp_console_pages ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t con_pages_show(struct device_driver *dev, char *buf)
{
 return sprintf(buf, "%i\n", sclp_console_pages);
}
