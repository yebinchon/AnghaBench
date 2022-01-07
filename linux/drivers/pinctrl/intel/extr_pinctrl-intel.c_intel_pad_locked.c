
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_pinctrl {int dummy; } ;
struct intel_padgroup {int reg_num; } ;
struct intel_community {int padcfglock_offset; scalar_t__ regs; } ;


 int BIT (unsigned int) ;
 int PAD_LOCKED ;
 int PAD_LOCKED_FULL ;
 int PAD_LOCKED_TX ;
 int PAD_UNLOCKED ;
 struct intel_padgroup* intel_community_get_padgroup (struct intel_community*,unsigned int) ;
 struct intel_community* intel_get_community (struct intel_pinctrl*,unsigned int) ;
 unsigned int padgroup_offset (struct intel_padgroup const*,unsigned int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int intel_pad_locked(struct intel_pinctrl *pctrl, unsigned int pin)
{
 struct intel_community *community;
 const struct intel_padgroup *padgrp;
 unsigned int offset, gpp_offset;
 u32 value;
 int ret = PAD_UNLOCKED;

 community = intel_get_community(pctrl, pin);
 if (!community)
  return PAD_LOCKED_FULL;
 if (!community->padcfglock_offset)
  return PAD_UNLOCKED;

 padgrp = intel_community_get_padgroup(community, pin);
 if (!padgrp)
  return PAD_LOCKED_FULL;

 gpp_offset = padgroup_offset(padgrp, pin);






 offset = community->padcfglock_offset + 0 + padgrp->reg_num * 8;
 value = readl(community->regs + offset);
 if (value & BIT(gpp_offset))
  ret |= PAD_LOCKED;

 offset = community->padcfglock_offset + 4 + padgrp->reg_num * 8;
 value = readl(community->regs + offset);
 if (value & BIT(gpp_offset))
  ret |= PAD_LOCKED_TX;

 return ret;
}
