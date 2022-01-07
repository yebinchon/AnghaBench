
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct via_pll_config {int rshift; } ;


 int get_pll_internal_frequency (int,struct via_pll_config) ;

__attribute__((used)) static inline u32 get_pll_output_frequency(u32 ref_freq,
 struct via_pll_config pll)
{
 return get_pll_internal_frequency(ref_freq, pll) >> pll.rshift;
}
