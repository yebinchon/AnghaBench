
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_ops {scalar_t__ apply; scalar_t__ disable; scalar_t__ enable; scalar_t__ config; } ;



__attribute__((used)) static bool pwm_ops_check(const struct pwm_ops *ops)
{

 if (ops->config && ops->enable && ops->disable)
  return 1;


 if (ops->apply)
  return 1;

 return 0;
}
