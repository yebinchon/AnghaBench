
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int parport_device_type ;

__attribute__((used)) static int is_parport(struct device *dev)
{
 return dev->type == &parport_device_type;
}
