
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pwm_chip {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 pwm_readl(struct tegra_pwm_chip *chip, unsigned int num)
{
 return readl(chip->regs + (num << 4));
}
