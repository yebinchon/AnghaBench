
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_info {int id; scalar_t__ regs; scalar_t__ regs_ex; } ;


 int mvs_ioremap (struct mvs_info*,int,int) ;

__attribute__((used)) static int mvs_94xx_ioremap(struct mvs_info *mvi)
{
 if (!mvs_ioremap(mvi, 2, -1)) {
  mvi->regs_ex = mvi->regs + 0x10200;
  mvi->regs += 0x20000;
  if (mvi->id == 1)
   mvi->regs += 0x4000;
  return 0;
 }
 return -1;
}
