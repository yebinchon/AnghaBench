
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int g450_vco2f(unsigned char p, unsigned int fvco) {
 return (p & 0x40) ? fvco : fvco >> ((p & 3) + 1);
}
