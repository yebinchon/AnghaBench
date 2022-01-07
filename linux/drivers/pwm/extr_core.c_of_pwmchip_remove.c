
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_chip {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int of_node_put (int ) ;

__attribute__((used)) static void of_pwmchip_remove(struct pwm_chip *chip)
{
 if (chip->dev)
  of_node_put(chip->dev->of_node);
}
