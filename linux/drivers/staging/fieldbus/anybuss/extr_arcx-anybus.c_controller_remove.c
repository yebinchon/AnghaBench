
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct controller_priv {int reset_gpiod; TYPE_1__* class_dev; } ;
struct TYPE_2__ {int id; } ;


 int controller_index_ida ;
 int device_unregister (TYPE_1__*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int ida_simple_remove (int *,int) ;
 struct controller_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int controller_remove(struct platform_device *pdev)
{
 struct controller_priv *cd = platform_get_drvdata(pdev);
 int id = cd->class_dev->id;

 device_unregister(cd->class_dev);
 ida_simple_remove(&controller_index_ida, id);
 gpiod_set_value_cansleep(cd->reset_gpiod, 1);
 return 0;
}
