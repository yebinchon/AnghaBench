
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int HALF_QUEUES ;
 int QUEUE_STAT1_EMPTY ;
 int __qmgr_get_stat1 (unsigned int) ;

int qmgr_stat_empty(unsigned int queue)
{
 BUG_ON(queue >= HALF_QUEUES);
 return __qmgr_get_stat1(queue) & QUEUE_STAT1_EMPTY;
}
