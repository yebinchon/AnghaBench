
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_mediatek_chip {scalar_t__ regs; } ;


 scalar_t__* pwm_mediatek_reg_offset ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void pwm_mediatek_writel(struct pwm_mediatek_chip *chip,
           unsigned int num, unsigned int offset,
           u32 value)
{
 writel(value, chip->regs + pwm_mediatek_reg_offset[num] + offset);
}
