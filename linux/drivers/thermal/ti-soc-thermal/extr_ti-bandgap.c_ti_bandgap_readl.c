
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ti_bandgap {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 ti_bandgap_readl(struct ti_bandgap *bgp, u32 reg)
{
 return readl(bgp->base + reg);
}
