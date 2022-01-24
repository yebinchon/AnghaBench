#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u8 ;
struct megasas_instance {int dummy; } ;
struct MR_DRV_RAID_MAP_ALL {int dummy; } ;
struct LD_LOAD_BALANCE_INFO {int /*<<< orphan*/ * scsi_pending_cmds; } ;
struct IO_REQUEST_INFO {int /*<<< orphan*/  pd_interface; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,struct MR_DRV_RAID_MAP_ALL*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,struct MR_DRV_RAID_MAP_ALL*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (struct megasas_instance*,struct LD_LOAD_BALANCE_INFO*,struct IO_REQUEST_INFO*,struct MR_DRV_RAID_MAP_ALL*) ; 

__le16 FUNC4(struct megasas_instance *instance,
			      struct LD_LOAD_BALANCE_INFO *lbInfo,
			      struct IO_REQUEST_INFO *io_info,
			      struct MR_DRV_RAID_MAP_ALL *drv_map)
{
	u8 arm_pd;
	__le16 devHandle;

	/* get best new arm (PD ID) */
	arm_pd  = FUNC3(instance, lbInfo, io_info, drv_map);
	devHandle = FUNC0(arm_pd, drv_map);
	io_info->pd_interface = FUNC1(arm_pd, drv_map);
	FUNC2(&lbInfo->scsi_pending_cmds[arm_pd]);

	return devHandle;
}