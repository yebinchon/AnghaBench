
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct TYPE_2__ {int * ldTgtIdToLd; } ;
struct MR_DRV_RAID_MAP_ALL {TYPE_1__ raidMap; } ;



u16 MR_TargetIdToLdGet(u32 ldTgtId, struct MR_DRV_RAID_MAP_ALL *map)
{
 return map->raidMap.ldTgtIdToLd[ldTgtId];
}
