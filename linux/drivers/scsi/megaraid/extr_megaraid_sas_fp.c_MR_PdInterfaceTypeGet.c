
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_4__ {TYPE_1__* devHndlInfo; } ;
struct MR_DRV_RAID_MAP_ALL {TYPE_2__ raidMap; } ;
struct TYPE_3__ {int interfaceType; } ;



__attribute__((used)) static u8 MR_PdInterfaceTypeGet(u32 pd, struct MR_DRV_RAID_MAP_ALL *map)
{
 return map->raidMap.devHndlInfo[pd].interfaceType;
}
