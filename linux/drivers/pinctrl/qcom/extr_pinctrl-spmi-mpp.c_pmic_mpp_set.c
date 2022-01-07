
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_mpp_state {int ctrl; } ;
struct gpio_chip {int dummy; } ;


 int PIN_CONFIG_OUTPUT ;
 struct pmic_mpp_state* gpiochip_get_data (struct gpio_chip*) ;
 unsigned long pinconf_to_config_packed (int ,int) ;
 int pmic_mpp_config_set (int ,unsigned int,unsigned long*,int) ;

__attribute__((used)) static void pmic_mpp_set(struct gpio_chip *chip, unsigned pin, int value)
{
 struct pmic_mpp_state *state = gpiochip_get_data(chip);
 unsigned long config;

 config = pinconf_to_config_packed(PIN_CONFIG_OUTPUT, value);

 pmic_mpp_config_set(state->ctrl, pin, &config, 1);
}
