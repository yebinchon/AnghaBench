
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl {int dummy; } ;
struct device {int dummy; } ;


 int pinctrl_put (struct pinctrl*) ;

__attribute__((used)) static void devm_pinctrl_release(struct device *dev, void *res)
{
 pinctrl_put(*(struct pinctrl **)res);
}
