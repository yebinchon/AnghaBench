
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int pll_freq_delta(unsigned int f1, unsigned int f2) {
 if (f2 < f1) {
      f2 = f1 - f2;
 } else {
  f2 = f2 - f1;
 }
 return f2;
}
