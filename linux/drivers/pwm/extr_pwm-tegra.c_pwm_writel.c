
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pwm_chip {scalar_t__ regs; } ;


 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void pwm_writel(struct tegra_pwm_chip *chip, unsigned int num,
        unsigned long val)
{
 writel(val, chip->regs + (num << 4));
}
