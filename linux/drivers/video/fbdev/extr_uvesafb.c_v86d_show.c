
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 char* v86d_path ;

__attribute__((used)) static ssize_t v86d_show(struct device_driver *dev, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n", v86d_path);
}
