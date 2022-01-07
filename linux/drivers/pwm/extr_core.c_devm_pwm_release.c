
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct device {int dummy; } ;


 int pwm_put (struct pwm_device*) ;

__attribute__((used)) static void devm_pwm_release(struct device *dev, void *res)
{
 pwm_put(*(struct pwm_device **)res);
}
