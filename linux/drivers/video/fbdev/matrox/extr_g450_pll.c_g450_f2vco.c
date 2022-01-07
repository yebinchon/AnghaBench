
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int g450_f2vco(unsigned char p, unsigned int fin) {
 return (p & 0x40) ? fin : fin << ((p & 3) + 1);
}
