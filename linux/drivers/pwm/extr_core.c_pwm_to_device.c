
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;


 int pwm_tree ;
 struct pwm_device* radix_tree_lookup (int *,unsigned int) ;

__attribute__((used)) static struct pwm_device *pwm_to_device(unsigned int pwm)
{
 return radix_tree_lookup(&pwm_tree, pwm);
}
