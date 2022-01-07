
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_chip {int of_pwm_n_cells; TYPE_1__* dev; scalar_t__ of_xlate; } ;
struct TYPE_2__ {int of_node; } ;


 int of_node_get (int ) ;
 scalar_t__ of_pwm_simple_xlate ;

__attribute__((used)) static void of_pwmchip_add(struct pwm_chip *chip)
{
 if (!chip->dev || !chip->dev->of_node)
  return;

 if (!chip->of_xlate) {
  chip->of_xlate = of_pwm_simple_xlate;
  chip->of_pwm_n_cells = 2;
 }

 of_node_get(chip->dev->of_node);
}
