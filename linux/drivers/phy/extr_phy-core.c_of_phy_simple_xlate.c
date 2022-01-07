
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ of_node; } ;
struct phy {TYPE_1__ dev; } ;
struct of_phandle_args {scalar_t__ np; } ;
struct device {int dummy; } ;
struct class_dev_iter {int dummy; } ;


 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 int class_dev_iter_exit (struct class_dev_iter*) ;
 int class_dev_iter_init (struct class_dev_iter*,int ,int *,int *) ;
 struct device* class_dev_iter_next (struct class_dev_iter*) ;
 int phy_class ;
 struct phy* to_phy (struct device*) ;

struct phy *of_phy_simple_xlate(struct device *dev, struct of_phandle_args
 *args)
{
 struct phy *phy;
 struct class_dev_iter iter;

 class_dev_iter_init(&iter, phy_class, ((void*)0), ((void*)0));
 while ((dev = class_dev_iter_next(&iter))) {
  phy = to_phy(dev);
  if (args->np != phy->dev.of_node)
   continue;

  class_dev_iter_exit(&iter);
  return phy;
 }

 class_dev_iter_exit(&iter);
 return ERR_PTR(-ENODEV);
}
