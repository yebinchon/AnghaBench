
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_info {int id; scalar_t__ regs; } ;


 int mvs_iounmap (scalar_t__) ;

__attribute__((used)) static void mvs_94xx_iounmap(struct mvs_info *mvi)
{
 if (mvi->regs) {
  mvi->regs -= 0x20000;
  if (mvi->id == 1)
   mvi->regs -= 0x4000;
  mvs_iounmap(mvi->regs);
 }
}
