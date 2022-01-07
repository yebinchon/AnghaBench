
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int dim2_write_ctr_mask (int,int const*,int const*) ;

__attribute__((used)) static inline void dim2_write_ctr(u32 ctr_addr, const u32 *value)
{
 u32 const mask[4] = { 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF };

 dim2_write_ctr_mask(ctr_addr, mask, value);
}
