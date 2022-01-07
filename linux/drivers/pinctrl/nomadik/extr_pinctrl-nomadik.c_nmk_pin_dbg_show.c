
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct gpio_chip {unsigned int base; } ;


 struct gpio_chip* find_gc_from_pin (unsigned int) ;
 int nmk_gpio_dbg_show_one (struct seq_file*,struct pinctrl_dev*,struct gpio_chip*,unsigned int,unsigned int) ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void nmk_pin_dbg_show(struct pinctrl_dev *pctldev, struct seq_file *s,
     unsigned offset)
{
 struct gpio_chip *chip = find_gc_from_pin(offset);

 if (!chip) {
  seq_printf(s, "invalid pin offset");
  return;
 }
 nmk_gpio_dbg_show_one(s, pctldev, chip, offset - chip->base, offset);
}
