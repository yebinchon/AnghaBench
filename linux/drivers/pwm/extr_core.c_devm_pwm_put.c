
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_pwm_match ;
 int devm_pwm_release ;
 int devres_release (struct device*,int ,int ,struct pwm_device*) ;

void devm_pwm_put(struct device *dev, struct pwm_device *pwm)
{
 WARN_ON(devres_release(dev, devm_pwm_release, devm_pwm_match, pwm));
}
