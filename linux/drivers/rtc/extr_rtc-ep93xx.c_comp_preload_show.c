
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int ep93xx_rtc_get_swcomp (int ,unsigned short*,int *) ;
 int sprintf (char*,char*,unsigned short) ;

__attribute__((used)) static ssize_t comp_preload_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 unsigned short preload;

 ep93xx_rtc_get_swcomp(dev->parent, &preload, ((void*)0));

 return sprintf(buf, "%d\n", preload);
}
