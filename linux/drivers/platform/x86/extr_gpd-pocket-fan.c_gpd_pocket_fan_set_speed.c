
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpd_pocket_fan_data {int last_speed; int gpio1; int gpio0; } ;


 int gpiod_direction_output (int ,int) ;

__attribute__((used)) static void gpd_pocket_fan_set_speed(struct gpd_pocket_fan_data *fan, int speed)
{
 if (speed == fan->last_speed)
  return;

 gpiod_direction_output(fan->gpio0, !!(speed & 1));
 gpiod_direction_output(fan->gpio1, !!(speed & 2));

 fan->last_speed = speed;
}
