
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aty128fb_par {int dummy; } ;


 int BIOS_0_SCRATCH ;
 int aty_ld_le32 (int ) ;
 int aty_st_le32 (int ,int) ;

__attribute__((used)) static int register_test(const struct aty128fb_par *par)
{
 u32 val;
 int flag = 0;

 val = aty_ld_le32(BIOS_0_SCRATCH);

 aty_st_le32(BIOS_0_SCRATCH, 0x55555555);
 if (aty_ld_le32(BIOS_0_SCRATCH) == 0x55555555) {
  aty_st_le32(BIOS_0_SCRATCH, 0xAAAAAAAA);

  if (aty_ld_le32(BIOS_0_SCRATCH) == 0xAAAAAAAA)
   flag = 1;
 }

 aty_st_le32(BIOS_0_SCRATCH, val);
 return flag;
}
