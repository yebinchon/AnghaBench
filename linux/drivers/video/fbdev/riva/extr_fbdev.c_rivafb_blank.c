
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riva_par {int dummy; } ;
struct fb_info {struct riva_par* par; } ;


 int CRTCin (struct riva_par*,int) ;
 int CRTCout (struct riva_par*,int,unsigned char) ;





 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 int SEQin (struct riva_par*,int) ;
 int SEQout (struct riva_par*,int,unsigned char) ;

__attribute__((used)) static int rivafb_blank(int blank, struct fb_info *info)
{
 struct riva_par *par= info->par;
 unsigned char tmp, vesa;

 tmp = SEQin(par, 0x01) & ~0x20;
 vesa = CRTCin(par, 0x1a) & ~0xc0;

 NVTRACE_ENTER();

 if (blank)
  tmp |= 0x20;

 switch (blank) {
 case 129:
 case 131:
  break;
 case 128:
  vesa |= 0x80;
  break;
 case 132:
  vesa |= 0x40;
  break;
 case 130:
  vesa |= 0xc0;
  break;
 }

 SEQout(par, 0x01, tmp);
 CRTCout(par, 0x1a, vesa);

 NVTRACE_LEAVE();

 return 0;
}
