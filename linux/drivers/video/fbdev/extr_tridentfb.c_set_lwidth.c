
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {scalar_t__ chip_id; } ;


 int AddColReg ;
 scalar_t__ CYBER9320 ;
 scalar_t__ TGUI9440 ;
 int VGA_CRTC_OFFSET ;
 int read3X4 (struct tridentfb_par*,int ) ;
 int write3X4 (struct tridentfb_par*,int ,int) ;

__attribute__((used)) static inline void set_lwidth(struct tridentfb_par *par, int width)
{
 write3X4(par, VGA_CRTC_OFFSET, width & 0xFF);


 if (par->chip_id == TGUI9440 || par->chip_id == CYBER9320)
  write3X4(par, AddColReg,
       (read3X4(par, AddColReg) & 0xEF) | ((width & 0x100) >> 4));
 else
  write3X4(par, AddColReg,
       (read3X4(par, AddColReg) & 0xCF) | ((width & 0x300) >> 4));
}
