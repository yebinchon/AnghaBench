
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct regulator_dev {TYPE_1__ dev; struct regulator_dev* constraints; } ;
struct device {int dummy; } ;


 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int kfree (struct regulator_dev*) ;
 int of_node_put (int ) ;

__attribute__((used)) static void regulator_dev_release(struct device *dev)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);

 kfree(rdev->constraints);
 of_node_put(rdev->dev.of_node);
 kfree(rdev);
}
