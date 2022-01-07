
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stat2; } ;


 int BUG_ON (int) ;
 unsigned int HALF_QUEUES ;
 unsigned int __raw_readl (int *) ;
 TYPE_1__* qmgr_regs ;

__attribute__((used)) static int __qmgr_get_stat2(unsigned int queue)
{
 BUG_ON(queue >= HALF_QUEUES);
 return (__raw_readl(&qmgr_regs->stat2[queue >> 4])
  >> ((queue & 0xF) << 1)) & 0x3;
}
