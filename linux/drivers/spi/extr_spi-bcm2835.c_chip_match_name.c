
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int label; } ;


 int strcmp (int ,void*) ;

__attribute__((used)) static int chip_match_name(struct gpio_chip *chip, void *data)
{
 return !strcmp(chip->label, data);
}
