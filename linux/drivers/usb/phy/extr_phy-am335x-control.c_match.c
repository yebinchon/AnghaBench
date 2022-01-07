
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {int * driver; struct device_node const* of_node; } ;
struct TYPE_2__ {int driver; } ;


 TYPE_1__ am335x_control_driver ;

__attribute__((used)) static int match(struct device *dev, const void *data)
{
 const struct device_node *node = (const struct device_node *)data;
 return dev->of_node == node &&
  dev->driver == &am335x_control_driver.driver;
}
