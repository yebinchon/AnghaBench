
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gasket_driver_desc {int dummy; } ;
struct gasket_dev {TYPE_1__* internal_desc; } ;
struct TYPE_2__ {struct gasket_driver_desc const* driver_desc; } ;



const struct gasket_driver_desc *gasket_get_driver_desc(struct gasket_dev *dev)
{
 return dev->internal_desc->driver_desc;
}
