
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int32_t ;



__attribute__((used)) static inline void matrox_cfb4_pal(u_int32_t* pal) {
 unsigned int i;

 for (i = 0; i < 16; i++) {
  pal[i] = i * 0x11111111U;
 }
}
