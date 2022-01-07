
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int dummy; } ;


 int VGAwSEQ (int,int,struct savagefb_par*) ;

__attribute__((used)) static void vgaHWSeqReset(struct savagefb_par *par, int start)
{
 if (start)
  VGAwSEQ(0x00, 0x01, par);
 else
  VGAwSEQ(0x00, 0x03, par);
}
