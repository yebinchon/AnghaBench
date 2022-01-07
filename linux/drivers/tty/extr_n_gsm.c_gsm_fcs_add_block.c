
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t* gsm_fcs8 ;

__attribute__((used)) static inline u8 gsm_fcs_add_block(u8 fcs, u8 *c, int len)
{
 while (len--)
  fcs = gsm_fcs8[fcs ^ *c++];
 return fcs;
}
