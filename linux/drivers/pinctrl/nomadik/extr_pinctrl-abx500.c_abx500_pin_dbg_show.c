
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct gpio_chip {unsigned int base; } ;
struct abx500_pinctrl {struct gpio_chip chip; } ;


 int abx500_gpio_dbg_show_one (struct seq_file*,struct pinctrl_dev*,struct gpio_chip*,unsigned int,unsigned int) ;
 struct abx500_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static void abx500_pin_dbg_show(struct pinctrl_dev *pctldev,
    struct seq_file *s, unsigned offset)
{
 struct abx500_pinctrl *pct = pinctrl_dev_get_drvdata(pctldev);
 struct gpio_chip *chip = &pct->chip;

 abx500_gpio_dbg_show_one(s, pctldev, chip, offset,
     chip->base + offset - 1);
}
