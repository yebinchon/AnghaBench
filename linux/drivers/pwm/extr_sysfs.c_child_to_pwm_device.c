
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_export {struct pwm_device* pwm; } ;
struct pwm_device {int dummy; } ;
struct device {int dummy; } ;


 struct pwm_export* child_to_pwm_export (struct device*) ;

__attribute__((used)) static struct pwm_device *child_to_pwm_device(struct device *child)
{
 struct pwm_export *export = child_to_pwm_export(child);

 return export->pwm;
}
