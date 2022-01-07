
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5m8767_info {int buck_gpioindex; int * buck_gpios; } ;


 int gpio_set_value (int ,int) ;

__attribute__((used)) static inline int s5m8767_set_low(struct s5m8767_info *s5m8767)
{
 int temp_index = s5m8767->buck_gpioindex;

 gpio_set_value(s5m8767->buck_gpios[2], temp_index & 0x1);
 gpio_set_value(s5m8767->buck_gpios[1], (temp_index >> 1) & 0x1);
 gpio_set_value(s5m8767->buck_gpios[0], (temp_index >> 2) & 0x1);

 return 0;
}
