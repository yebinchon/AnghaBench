
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {size_t NumberOfPhyBlock; size_t* Phy2LogMap; size_t NumberOfLogBlock; int * Log2PhyMap; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;


 scalar_t__ MS_LB_ACQUIRED_ERROR ;
 scalar_t__ MS_LB_INITIAL_ERROR ;
 int MS_LB_NOT_USED ;

__attribute__((used)) static int ms_lib_setacquired_errorblock(struct us_data *us, u16 phyblk)
{
 u16 log;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 if (phyblk >= info->MS_Lib.NumberOfPhyBlock)
  return (u32)-1;

 log = info->MS_Lib.Phy2LogMap[phyblk];

 if (log < info->MS_Lib.NumberOfLogBlock)
  info->MS_Lib.Log2PhyMap[log] = MS_LB_NOT_USED;

 if (info->MS_Lib.Phy2LogMap[phyblk] != MS_LB_INITIAL_ERROR)
  info->MS_Lib.Phy2LogMap[phyblk] = MS_LB_ACQUIRED_ERROR;

 return 0;
}
