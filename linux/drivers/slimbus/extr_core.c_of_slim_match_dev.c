
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct slim_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct slim_device* to_slim_device (struct device*) ;

__attribute__((used)) static int of_slim_match_dev(struct device *dev, void *data)
{
 struct device_node *np = data;
 struct slim_device *sbdev = to_slim_device(dev);

 return (sbdev->dev.of_node == np);
}
