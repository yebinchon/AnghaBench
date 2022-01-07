
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_gpio_state {int dev; int map; } ;
struct pmic_gpio_pad {scalar_t__ base; } ;


 int dev_err (int ,char*,unsigned int) ;
 int regmap_write (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static int pmic_gpio_write(struct pmic_gpio_state *state,
      struct pmic_gpio_pad *pad, unsigned int addr,
      unsigned int val)
{
 int ret;

 ret = regmap_write(state->map, pad->base + addr, val);
 if (ret < 0)
  dev_err(state->dev, "write 0x%x failed\n", addr);

 return ret;
}
