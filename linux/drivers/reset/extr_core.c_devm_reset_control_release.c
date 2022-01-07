
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int dummy; } ;
struct device {int dummy; } ;


 int reset_control_put (struct reset_control*) ;

__attribute__((used)) static void devm_reset_control_release(struct device *dev, void *res)
{
 reset_control_put(*(struct reset_control **)res);
}
