
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int dim2_write_ctr (int ,int const*) ;

__attribute__((used)) static inline void dim2_clear_ctr(u32 ctr_addr)
{
 u32 const value[4] = { 0, 0, 0, 0 };

 dim2_write_ctr(ctr_addr, value);
}
