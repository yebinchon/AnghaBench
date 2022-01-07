
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct via_pll_config {int divisor; int rshift; int multiplier; } ;



__attribute__((used)) static inline u32 vx855_encode_pll(struct via_pll_config pll)
{
 return (pll.divisor << 16)
  | (pll.rshift << 10)
  | pll.multiplier;
}
