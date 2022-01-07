
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int __tb_service_match (struct device*,struct device_driver*) ;

__attribute__((used)) static int tb_service_match(struct device *dev, struct device_driver *drv)
{
 return !!__tb_service_match(dev, drv);
}
