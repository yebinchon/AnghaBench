
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 void const* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int pwmchip_sysfs_match(struct device *parent, const void *data)
{
 return dev_get_drvdata(parent) == data;
}
