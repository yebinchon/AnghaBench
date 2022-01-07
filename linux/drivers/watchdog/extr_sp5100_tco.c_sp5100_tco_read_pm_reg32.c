
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int sp5100_tco_read_pm_reg8 (scalar_t__) ;

__attribute__((used)) static u32 sp5100_tco_read_pm_reg32(u8 index)
{
 u32 val = 0;
 int i;

 for (i = 3; i >= 0; i--)
  val = (val << 8) + sp5100_tco_read_pm_reg8(index + i);

 return val;
}
