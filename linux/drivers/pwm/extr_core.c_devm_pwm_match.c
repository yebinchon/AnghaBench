
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void pwm_device ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_pwm_match(struct device *dev, void *res, void *data)
{
 struct pwm_device **p = res;

 if (WARN_ON(!p || !*p))
  return 0;

 return *p == data;
}
