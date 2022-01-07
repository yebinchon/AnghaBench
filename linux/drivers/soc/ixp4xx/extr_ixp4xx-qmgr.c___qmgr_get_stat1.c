
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stat1; } ;


 unsigned int __raw_readl (int *) ;
 TYPE_1__* qmgr_regs ;

__attribute__((used)) static int __qmgr_get_stat1(unsigned int queue)
{
 return (__raw_readl(&qmgr_regs->stat1[queue >> 3])
  >> ((queue & 7) << 2)) & 0xF;
}
