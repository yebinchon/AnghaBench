
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_pwm {scalar_t__ base; } ;


 int CONFIG_CPU_BIG_ENDIAN ;
 int CONFIG_MIPS ;
 scalar_t__ IS_ENABLED (int ) ;
 int __raw_writel (int ,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void brcmstb_pwm_writel(struct brcmstb_pwm *p, u32 value,
          unsigned int offset)
{
 if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
  __raw_writel(value, p->base + offset);
 else
  writel_relaxed(value, p->base + offset);
}
