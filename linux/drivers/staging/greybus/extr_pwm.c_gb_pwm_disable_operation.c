
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct gbphy_device {int dummy; } ;
struct gb_pwm_disable_request {scalar_t__ which; } ;
struct TYPE_2__ {int dev; } ;
struct gb_pwm_chip {scalar_t__ pwm_max; TYPE_1__ chip; int connection; } ;
typedef int request ;


 int EINVAL ;
 int GB_PWM_TYPE_DISABLE ;
 int gb_operation_sync (int ,int ,struct gb_pwm_disable_request*,int,int *,int ) ;
 int gbphy_runtime_put_autosuspend (struct gbphy_device*) ;
 struct gbphy_device* to_gbphy_dev (int ) ;

__attribute__((used)) static int gb_pwm_disable_operation(struct gb_pwm_chip *pwmc,
        u8 which)
{
 struct gb_pwm_disable_request request;
 struct gbphy_device *gbphy_dev;
 int ret;

 if (which > pwmc->pwm_max)
  return -EINVAL;

 request.which = which;

 ret = gb_operation_sync(pwmc->connection, GB_PWM_TYPE_DISABLE,
    &request, sizeof(request), ((void*)0), 0);

 gbphy_dev = to_gbphy_dev(pwmc->chip.dev);
 gbphy_runtime_put_autosuspend(gbphy_dev);

 return ret;
}
