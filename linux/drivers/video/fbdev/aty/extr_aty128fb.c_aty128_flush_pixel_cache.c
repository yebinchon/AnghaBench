
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aty128fb_par {int dummy; } ;


 int PC_BUSY ;
 int PC_NGUI_CTLSTAT ;
 int aty_ld_le32 (int ) ;
 int aty_st_le32 (int ,int) ;

__attribute__((used)) static void aty128_flush_pixel_cache(const struct aty128fb_par *par)
{
 int i;
 u32 tmp;

 tmp = aty_ld_le32(PC_NGUI_CTLSTAT);
 tmp &= ~(0x00ff);
 tmp |= 0x00ff;
 aty_st_le32(PC_NGUI_CTLSTAT, tmp);

 for (i = 0; i < 2000000; i++)
  if (!(aty_ld_le32(PC_NGUI_CTLSTAT) & PC_BUSY))
   break;
}
