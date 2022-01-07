
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_mediatek_chip {scalar_t__ regs; } ;


 scalar_t__* pwm_mediatek_reg_offset ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 pwm_mediatek_readl(struct pwm_mediatek_chip *chip,
         unsigned int num, unsigned int offset)
{
 return readl(chip->regs + pwm_mediatek_reg_offset[num] + offset);
}
