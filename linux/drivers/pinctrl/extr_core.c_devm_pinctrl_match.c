
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void pinctrl ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_pinctrl_match(struct device *dev, void *res, void *data)
{
 struct pinctrl **p = res;

 return *p == data;
}
