
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct via_pll_config {int divisor; int multiplier; } ;



__attribute__((used)) static inline u32 get_pll_internal_frequency(u32 ref_freq,
 struct via_pll_config pll)
{
 return ref_freq / pll.divisor * pll.multiplier;
}
