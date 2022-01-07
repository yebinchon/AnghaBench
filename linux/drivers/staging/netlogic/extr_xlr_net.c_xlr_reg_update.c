
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int xlr_nae_rdreg (int*,int) ;
 int xlr_nae_wreg (int*,int,int) ;

__attribute__((used)) static inline void xlr_reg_update(u32 *base_addr, u32 off, u32 val, u32 mask)
{
 u32 tmp;

 tmp = xlr_nae_rdreg(base_addr, off);
 xlr_nae_wreg(base_addr, off, (tmp & ~mask) | (val & mask));
}
