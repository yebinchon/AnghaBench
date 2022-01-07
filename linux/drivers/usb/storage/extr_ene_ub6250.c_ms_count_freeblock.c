
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef size_t u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {int* Phy2LogMap; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;




 size_t MS_PHYSICAL_BLOCKS_PER_SEGMENT ;

__attribute__((used)) static int ms_count_freeblock(struct us_data *us, u16 PhyBlock)
{
 u32 Ende, Count;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 Ende = PhyBlock + MS_PHYSICAL_BLOCKS_PER_SEGMENT;
 for (Count = 0; PhyBlock < Ende; PhyBlock++) {
  switch (info->MS_Lib.Phy2LogMap[PhyBlock]) {
  case 129:
  case 128:
   Count++;
  default:
   break;
  }
 }

 return Count;
}
