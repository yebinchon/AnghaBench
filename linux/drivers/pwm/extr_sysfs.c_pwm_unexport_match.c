
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 void* child_to_pwm_device (struct device*) ;

__attribute__((used)) static int pwm_unexport_match(struct device *child, void *data)
{
 return child_to_pwm_device(child) == data;
}
