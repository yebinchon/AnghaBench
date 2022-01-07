
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct device {int dummy; } ;


 int reset_controller_unregister (struct reset_controller_dev*) ;

__attribute__((used)) static void devm_reset_controller_release(struct device *dev, void *res)
{
 reset_controller_unregister(*(struct reset_controller_dev **)res);
}
