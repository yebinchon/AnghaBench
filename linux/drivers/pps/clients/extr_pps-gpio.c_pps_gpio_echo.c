
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ expires; } ;
struct pps_gpio_device_data {TYPE_4__ echo_timer; scalar_t__ echo_timeout; TYPE_2__* pps; int echo_pin; } ;
struct TYPE_7__ {int mode; } ;
struct pps_device {TYPE_3__ params; } ;
struct TYPE_5__ {int mode; } ;
struct TYPE_6__ {TYPE_1__ params; } ;




 int PPS_ECHOASSERT ;
 int PPS_ECHOCLEAR ;
 int add_timer (TYPE_4__*) ;
 int gpiod_set_value (int ,int) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void pps_gpio_echo(struct pps_device *pps, int event, void *data)
{

 struct pps_gpio_device_data *info = data;

 switch (event) {
 case 129:
  if (pps->params.mode & PPS_ECHOASSERT)
   gpiod_set_value(info->echo_pin, 1);
  break;

 case 128:
  if (pps->params.mode & PPS_ECHOCLEAR)
   gpiod_set_value(info->echo_pin, 1);
  break;
 }


 if (info->pps->params.mode & (PPS_ECHOASSERT | PPS_ECHOCLEAR)) {
  info->echo_timer.expires = jiffies + info->echo_timeout;
  add_timer(&info->echo_timer);
 }
}
