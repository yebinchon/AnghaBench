
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int dim2_clear_ctr (int) ;

__attribute__((used)) static void dim2_clear_ctram(void)
{
 u32 ctr_addr;

 for (ctr_addr = 0; ctr_addr < 0x90; ctr_addr++)
  dim2_clear_ctr(ctr_addr);
}
