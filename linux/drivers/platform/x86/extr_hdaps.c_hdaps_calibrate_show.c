
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int rest_x ;
 int rest_y ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t hdaps_calibrate_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "(%d,%d)\n", rest_x, rest_y);
}
