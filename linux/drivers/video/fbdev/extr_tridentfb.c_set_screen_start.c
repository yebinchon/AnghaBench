
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tridentfb_par {int dummy; } ;


 int CRTCModuleTest ;
 int CRTHiOrd ;
 int VGA_CRTC_START_HI ;
 int VGA_CRTC_START_LO ;
 int read3X4 (struct tridentfb_par*,int ) ;
 int write3X4 (struct tridentfb_par*,int ,int) ;

__attribute__((used)) static void set_screen_start(struct tridentfb_par *par, int base)
{
 u8 tmp;
 write3X4(par, VGA_CRTC_START_LO, base & 0xFF);
 write3X4(par, VGA_CRTC_START_HI, (base & 0xFF00) >> 8);
 tmp = read3X4(par, CRTCModuleTest) & 0xDF;
 write3X4(par, CRTCModuleTest, tmp | ((base & 0x10000) >> 11));
 tmp = read3X4(par, CRTHiOrd) & 0xF8;
 write3X4(par, CRTHiOrd, tmp | ((base & 0xE0000) >> 17));
}
