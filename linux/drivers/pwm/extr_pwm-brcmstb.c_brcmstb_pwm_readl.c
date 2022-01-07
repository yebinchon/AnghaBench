
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_pwm {scalar_t__ base; } ;


 int CONFIG_CPU_BIG_ENDIAN ;
 int CONFIG_MIPS ;
 scalar_t__ IS_ENABLED (int ) ;
 int __raw_readl (scalar_t__) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 brcmstb_pwm_readl(struct brcmstb_pwm *p,
        unsigned int offset)
{
 if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
  return __raw_readl(p->base + offset);
 else
  return readl_relaxed(p->base + offset);
}
