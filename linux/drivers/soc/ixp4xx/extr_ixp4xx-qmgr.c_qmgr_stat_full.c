
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int statf_h; } ;


 unsigned int HALF_QUEUES ;
 int QUEUE_STAT1_FULL ;
 int __qmgr_get_stat1 (unsigned int) ;
 unsigned int __raw_readl (int *) ;
 TYPE_1__* qmgr_regs ;

int qmgr_stat_full(unsigned int queue)
{
 if (queue >= HALF_QUEUES)
  return (__raw_readl(&qmgr_regs->statf_h) >>
   (queue - HALF_QUEUES)) & 0x01;
 return __qmgr_get_stat1(queue) & QUEUE_STAT1_FULL;
}
