
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compal_data {int pwm_enable; int curr_pwm; } ;



__attribute__((used)) static void initialize_fan_control_data(struct compal_data *data)
{
 data->pwm_enable = 2;
 data->curr_pwm = 255;

}
