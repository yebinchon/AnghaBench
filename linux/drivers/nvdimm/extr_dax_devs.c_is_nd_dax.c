
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int nd_dax_device_type ;

bool is_nd_dax(struct device *dev)
{
 return dev ? dev->type == &nd_dax_device_type : 0;
}
