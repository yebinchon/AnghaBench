
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ti_bandgap {int dummy; } ;


 scalar_t__ ti_bandgap_readl (struct ti_bandgap*,scalar_t__) ;

__attribute__((used)) static u32 ti_errata814_bandgap_read_temp(struct ti_bandgap *bgp, u32 reg)
{
 u32 val1, val2;

 val1 = ti_bandgap_readl(bgp, reg);
 val2 = ti_bandgap_readl(bgp, reg);


 if (val1 == val2)
  return val1;


 return ti_bandgap_readl(bgp, reg);
}
