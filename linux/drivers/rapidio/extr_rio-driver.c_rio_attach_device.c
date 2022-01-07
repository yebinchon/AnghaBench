
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct rio_dev {TYPE_1__ dev; } ;


 int rio_bus_type ;

void rio_attach_device(struct rio_dev *rdev)
{
 rdev->dev.bus = &rio_bus_type;
}
