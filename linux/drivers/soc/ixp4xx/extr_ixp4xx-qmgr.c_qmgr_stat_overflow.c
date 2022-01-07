
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUEUE_STAT2_OVERFLOW ;
 int __qmgr_get_stat2 (unsigned int) ;

int qmgr_stat_overflow(unsigned int queue)
{
 return __qmgr_get_stat2(queue) & QUEUE_STAT2_OVERFLOW;
}
