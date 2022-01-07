
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int dummy; } ;


 int VGAdisablePalette (struct savagefb_par*) ;
 int VGAenablePalette (struct savagefb_par*) ;
 unsigned char VGArSEQ (int,struct savagefb_par*) ;
 int VGAwSEQ (int,unsigned char,struct savagefb_par*) ;
 int vgaHWSeqReset (struct savagefb_par*,int) ;

__attribute__((used)) static void vgaHWProtect(struct savagefb_par *par, int on)
{
 unsigned char tmp;

 if (on) {



  tmp = VGArSEQ(0x01, par);

  vgaHWSeqReset(par, 1);
  VGAwSEQ(0x01, tmp | 0x20, par);

  VGAenablePalette(par);
 } else {




  tmp = VGArSEQ(0x01, par);

  VGAwSEQ(0x01, tmp & ~0x20, par);
  vgaHWSeqReset(par, 0);

  VGAdisablePalette(par);
 }
}
