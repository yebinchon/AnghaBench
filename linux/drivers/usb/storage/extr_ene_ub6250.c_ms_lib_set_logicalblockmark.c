
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {size_t NumberOfPhyBlock; size_t* Phy2LogMap; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;



__attribute__((used)) static int ms_lib_set_logicalblockmark(struct us_data *us, u16 phyblk, u16 mark)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 if (phyblk >= info->MS_Lib.NumberOfPhyBlock)
  return (u32)-1;

 info->MS_Lib.Phy2LogMap[phyblk] = mark;

 return 0;
}
