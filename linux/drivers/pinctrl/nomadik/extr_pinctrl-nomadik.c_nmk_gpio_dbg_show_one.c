
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct gpio_chip {int dummy; } ;



__attribute__((used)) static inline void nmk_gpio_dbg_show_one(struct seq_file *s,
      struct pinctrl_dev *pctldev,
      struct gpio_chip *chip,
      unsigned offset, unsigned gpio)
{
}
