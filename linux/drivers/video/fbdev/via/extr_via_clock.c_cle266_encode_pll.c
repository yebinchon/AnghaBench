
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct via_pll_config {int multiplier; int rshift; int divisor; } ;



__attribute__((used)) static inline u32 cle266_encode_pll(struct via_pll_config pll)
{
 return (pll.multiplier << 8)
  | (pll.rshift << 6)
  | pll.divisor;
}
