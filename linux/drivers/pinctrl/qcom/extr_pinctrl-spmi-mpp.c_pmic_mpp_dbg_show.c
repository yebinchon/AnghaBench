
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pmic_mpp_state {int ctrl; } ;
struct gpio_chip {unsigned int ngpio; } ;


 struct pmic_mpp_state* gpiochip_get_data (struct gpio_chip*) ;
 int pmic_mpp_config_dbg_show (int ,struct seq_file*,unsigned int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void pmic_mpp_dbg_show(struct seq_file *s, struct gpio_chip *chip)
{
 struct pmic_mpp_state *state = gpiochip_get_data(chip);
 unsigned i;

 for (i = 0; i < chip->ngpio; i++) {
  pmic_mpp_config_dbg_show(state->ctrl, s, i);
  seq_puts(s, "\n");
 }
}
