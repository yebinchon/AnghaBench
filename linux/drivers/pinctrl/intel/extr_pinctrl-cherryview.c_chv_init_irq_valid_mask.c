
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_pin_desc {int number; } ;
struct gpio_chip {int dummy; } ;
struct chv_pinctrl {struct chv_community* community; } ;
struct chv_community {int npins; int nirqs; struct pinctrl_pin_desc* pins; } ;


 int CHV_PADCTRL0 ;
 int CHV_PADCTRL0_INTSEL_MASK ;
 int CHV_PADCTRL0_INTSEL_SHIFT ;
 int chv_padreg (struct chv_pinctrl*,int ,int ) ;
 int clear_bit (int ,unsigned long*) ;
 struct chv_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int readl (int ) ;

__attribute__((used)) static void chv_init_irq_valid_mask(struct gpio_chip *chip,
        unsigned long *valid_mask,
        unsigned int ngpios)
{
 struct chv_pinctrl *pctrl = gpiochip_get_data(chip);
 const struct chv_community *community = pctrl->community;
 int i;


 for (i = 0; i < community->npins; i++) {
  const struct pinctrl_pin_desc *desc;
  u32 intsel;

  desc = &community->pins[i];

  intsel = readl(chv_padreg(pctrl, desc->number, CHV_PADCTRL0));
  intsel &= CHV_PADCTRL0_INTSEL_MASK;
  intsel >>= CHV_PADCTRL0_INTSEL_SHIFT;

  if (intsel >= community->nirqs)
   clear_bit(desc->number, valid_mask);
 }
}
