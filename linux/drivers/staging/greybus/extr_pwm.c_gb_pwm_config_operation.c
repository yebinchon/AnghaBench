
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct gbphy_device {int dummy; } ;
struct gb_pwm_config_request {void* period; void* duty; scalar_t__ which; } ;
struct TYPE_2__ {int dev; } ;
struct gb_pwm_chip {scalar_t__ pwm_max; int connection; TYPE_1__ chip; } ;
typedef int request ;


 int EINVAL ;
 int GB_PWM_TYPE_CONFIG ;
 void* cpu_to_le32 (int ) ;
 int gb_operation_sync (int ,int ,struct gb_pwm_config_request*,int,int *,int ) ;
 int gbphy_runtime_get_sync (struct gbphy_device*) ;
 int gbphy_runtime_put_autosuspend (struct gbphy_device*) ;
 struct gbphy_device* to_gbphy_dev (int ) ;

__attribute__((used)) static int gb_pwm_config_operation(struct gb_pwm_chip *pwmc,
       u8 which, u32 duty, u32 period)
{
 struct gb_pwm_config_request request;
 struct gbphy_device *gbphy_dev;
 int ret;

 if (which > pwmc->pwm_max)
  return -EINVAL;

 request.which = which;
 request.duty = cpu_to_le32(duty);
 request.period = cpu_to_le32(period);

 gbphy_dev = to_gbphy_dev(pwmc->chip.dev);
 ret = gbphy_runtime_get_sync(gbphy_dev);
 if (ret)
  return ret;

 ret = gb_operation_sync(pwmc->connection, GB_PWM_TYPE_CONFIG,
    &request, sizeof(request), ((void*)0), 0);

 gbphy_runtime_put_autosuspend(gbphy_dev);

 return ret;
}
