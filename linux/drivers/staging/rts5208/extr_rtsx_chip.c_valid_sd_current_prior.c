
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline int valid_sd_current_prior(u32 sd_current_prior)
{
 bool valid_para = 1;
 int i;

 for (i = 0; i < 4; i++) {
  u8 tmp = (u8)(sd_current_prior >> (i * 8));

  if (tmp > 0x03) {
   valid_para = 0;
   break;
  }
 }

 return valid_para;
}
