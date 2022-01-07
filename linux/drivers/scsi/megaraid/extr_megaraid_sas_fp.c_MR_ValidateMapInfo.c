
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef unsigned int u32 ;
typedef int u16 ;
struct megasas_instance {scalar_t__ UnevenSpanSupport; TYPE_1__* pdev; scalar_t__ supportmax256vd; scalar_t__ max_raid_mapsize; struct fusion_context* ctrl_context; } ;
struct fusion_context {int log_to_span; struct LD_LOAD_BALANCE_INFO* load_balance_info; struct MR_DRV_RAID_MAP_ALL** ld_drv_map; } ;
struct MR_LD_SPAN_MAP {int dummy; } ;
struct MR_LD_RAID {int capability; } ;
struct MR_FW_RAID_MAP_EXT {int dummy; } ;
struct MR_FW_RAID_MAP {int dummy; } ;
struct MR_DRV_RAID_MAP {int ldCount; int totalSize; } ;
struct MR_DRV_RAID_MAP_ALL {struct MR_DRV_RAID_MAP raidMap; } ;
struct LD_LOAD_BALANCE_INFO {int dummy; } ;
struct TYPE_2__ {int dev; } ;
typedef int PLD_SPAN_INFO ;


 int MAX_LOGICAL_DRIVES_EXT ;
 struct MR_LD_RAID* MR_LdRaidGet (int,struct MR_DRV_RAID_MAP_ALL*) ;
 scalar_t__ MR_PopulateDrvRaidMap (struct megasas_instance*,int) ;
 int MR_TargetIdToLdGet (int,struct MR_DRV_RAID_MAP_ALL*) ;
 int dev_dbg (int *,char*,unsigned int) ;
 int dev_err (int *,char*,unsigned int,unsigned int) ;
 int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 int le32_to_cpus (unsigned int*) ;
 int mr_update_load_balance_params (struct MR_DRV_RAID_MAP_ALL*,struct LD_LOAD_BALANCE_INFO*) ;
 int mr_update_span_set (struct MR_DRV_RAID_MAP_ALL*,int ) ;

u8 MR_ValidateMapInfo(struct megasas_instance *instance, u64 map_id)
{
 struct fusion_context *fusion;
 struct MR_DRV_RAID_MAP_ALL *drv_map;
 struct MR_DRV_RAID_MAP *pDrvRaidMap;
 struct LD_LOAD_BALANCE_INFO *lbInfo;
 PLD_SPAN_INFO ldSpanInfo;
 struct MR_LD_RAID *raid;
 u16 num_lds, i;
 u16 ld;
 u32 expected_size;

 if (MR_PopulateDrvRaidMap(instance, map_id))
  return 0;

 fusion = instance->ctrl_context;
 drv_map = fusion->ld_drv_map[(map_id & 1)];
 pDrvRaidMap = &drv_map->raidMap;

 lbInfo = fusion->load_balance_info;
 ldSpanInfo = fusion->log_to_span;

 if (instance->max_raid_mapsize)
  expected_size = sizeof(struct MR_DRV_RAID_MAP_ALL);
 else if (instance->supportmax256vd)
  expected_size = sizeof(struct MR_FW_RAID_MAP_EXT);
 else
  expected_size =
   (sizeof(struct MR_FW_RAID_MAP) - sizeof(struct MR_LD_SPAN_MAP) +
   (sizeof(struct MR_LD_SPAN_MAP) * le16_to_cpu(pDrvRaidMap->ldCount)));

 if (le32_to_cpu(pDrvRaidMap->totalSize) != expected_size) {
  dev_dbg(&instance->pdev->dev, "megasas: map info structure size 0x%x",
   le32_to_cpu(pDrvRaidMap->totalSize));
  dev_dbg(&instance->pdev->dev, "is not matching expected size 0x%x\n",
   (unsigned int)expected_size);
  dev_err(&instance->pdev->dev, "megasas: span map %x, pDrvRaidMap->totalSize : %x\n",
   (unsigned int)sizeof(struct MR_LD_SPAN_MAP),
   le32_to_cpu(pDrvRaidMap->totalSize));
  return 0;
 }

 if (instance->UnevenSpanSupport)
  mr_update_span_set(drv_map, ldSpanInfo);

 if (lbInfo)
  mr_update_load_balance_params(drv_map, lbInfo);

 num_lds = le16_to_cpu(drv_map->raidMap.ldCount);


 for (i = 0; (num_lds > 0) && (i < MAX_LOGICAL_DRIVES_EXT); i++) {
  ld = MR_TargetIdToLdGet(i, drv_map);


  if (ld >= (MAX_LOGICAL_DRIVES_EXT - 1))
   continue;

  raid = MR_LdRaidGet(ld, drv_map);
  le32_to_cpus((u32 *)&raid->capability);

  num_lds--;
 }

 return 1;
}
