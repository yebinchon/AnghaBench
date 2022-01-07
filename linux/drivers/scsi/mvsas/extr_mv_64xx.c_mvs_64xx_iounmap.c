
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_info {int regs_ex; int regs; } ;


 int mvs_iounmap (int ) ;

__attribute__((used)) static void mvs_64xx_iounmap(struct mvs_info *mvi)
{
 mvs_iounmap(mvi->regs);
 mvs_iounmap(mvi->regs_ex);
}
