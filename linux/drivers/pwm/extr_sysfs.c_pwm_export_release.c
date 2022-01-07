
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_export {int dummy; } ;
struct device {int dummy; } ;


 struct pwm_export* child_to_pwm_export (struct device*) ;
 int kfree (struct pwm_export*) ;

__attribute__((used)) static void pwm_export_release(struct device *child)
{
 struct pwm_export *export = child_to_pwm_export(child);

 kfree(export);
}
