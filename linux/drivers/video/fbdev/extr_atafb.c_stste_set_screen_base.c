
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char bas_hi; unsigned char bas_md; unsigned char bas_lo; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 int EXTD_SHIFTER ;
 unsigned long atari_stram_to_phys (void*) ;
 TYPE_1__ shifter_st ;

__attribute__((used)) static void stste_set_screen_base(void *s_base)
{
 unsigned long addr;
 addr = atari_stram_to_phys(s_base);

 shifter_st.bas_hi = (unsigned char)((addr & 0xff0000) >> 16);
 shifter_st.bas_md = (unsigned char)((addr & 0x00ff00) >> 8);
 if (ATARIHW_PRESENT(EXTD_SHIFTER))
  shifter_st.bas_lo = (unsigned char)(addr & 0x0000ff);
}
