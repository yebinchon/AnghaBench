
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {size_t NumberOfLogBlock; size_t NumberOfPhyBlock; size_t* Phy2LogMap; size_t* Log2PhyMap; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;



__attribute__((used)) static int ms_lib_set_logicalpair(struct us_data *us, u16 logblk, u16 phyblk)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 if ((logblk >= info->MS_Lib.NumberOfLogBlock) || (phyblk >= info->MS_Lib.NumberOfPhyBlock))
  return (u32)-1;

 info->MS_Lib.Phy2LogMap[phyblk] = logblk;
 info->MS_Lib.Log2PhyMap[logblk] = phyblk;

 return 0;
}
