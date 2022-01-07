
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nsp_gpio {int dummy; } ;


 int IO_CTRL ;
 int NSP_GPIO_SLEW_RATE_EN ;
 int nsp_set_bit (struct nsp_gpio*,int ,int ,unsigned int,int) ;

__attribute__((used)) static int nsp_gpio_set_slew(struct nsp_gpio *chip, unsigned gpio, u32 slew)
{
 if (slew)
  nsp_set_bit(chip, IO_CTRL, NSP_GPIO_SLEW_RATE_EN, gpio, 1);
 else
  nsp_set_bit(chip, IO_CTRL, NSP_GPIO_SLEW_RATE_EN, gpio, 0);

 return 0;
}
