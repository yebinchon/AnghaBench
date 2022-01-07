
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_pwm_count_response {int count; } ;
struct gb_pwm_chip {int pwm_max; int connection; } ;
typedef int response ;


 int GB_PWM_TYPE_PWM_COUNT ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_pwm_count_response*,int) ;

__attribute__((used)) static int gb_pwm_count_operation(struct gb_pwm_chip *pwmc)
{
 struct gb_pwm_count_response response;
 int ret;

 ret = gb_operation_sync(pwmc->connection, GB_PWM_TYPE_PWM_COUNT,
    ((void*)0), 0, &response, sizeof(response));
 if (ret)
  return ret;
 pwmc->pwm_max = response.count;
 return 0;
}
