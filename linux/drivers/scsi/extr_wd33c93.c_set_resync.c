
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WD33C93_hostdata {int * sync_stat; } ;


 int SS_UNSET ;

__attribute__((used)) static inline void set_resync ( struct WD33C93_hostdata *hd, int mask )
{
 int i;
 for (i = 0; i < 8; i++)
  if (mask & (1 << i))
   hd->sync_stat[i] = SS_UNSET;
}
