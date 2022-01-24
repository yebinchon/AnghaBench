#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  unsigned int u32 ;
typedef  scalar_t__ u16 ;
struct megasas_instance {scalar_t__ adapter_type; struct fusion_context* ctrl_context; } ;
struct fusion_context {int dummy; } ;
struct RAID_CONTEXT_G35 {int span_arm; } ;
struct RAID_CONTEXT {int span_arm; int /*<<< orphan*/  reg_lock_flags; } ;
struct MR_LD_RAID {int level; scalar_t__ regTypeReqOnRead; } ;
struct MR_DRV_RAID_MAP_ALL {int dummy; } ;
struct IO_REQUEST_INFO {int pd_interface; int start_span; int span_arm; unsigned int pd_after_lb; void* r1_alt_dev_handle; int /*<<< orphan*/  isRead; int /*<<< orphan*/  start_row; void* devHandle; int /*<<< orphan*/  pdBlock; } ;
typedef  void* __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  startBlk; } ;

/* Variables and functions */
 scalar_t__ INVADER_SERIES ; 
 unsigned int FUNC0 (unsigned int,int,struct MR_DRV_RAID_MAP_ALL*) ; 
 int /*<<< orphan*/  MR_DEVHANDLE_INVALID ; 
 struct MR_LD_RAID* FUNC1 (unsigned int,struct MR_DRV_RAID_MAP_ALL*) ; 
 unsigned int FUNC2 (unsigned int,int,struct MR_DRV_RAID_MAP_ALL*) ; 
 TYPE_1__* FUNC3 (unsigned int,int,struct MR_DRV_RAID_MAP_ALL*) ; 
 unsigned int MR_PD_INVALID ; 
 void* FUNC4 (unsigned int,struct MR_DRV_RAID_MAP_ALL*) ; 
 int FUNC5 (unsigned int,struct MR_DRV_RAID_MAP_ALL*) ; 
 int RAID_CTX_SPANARM_SPAN_SHIFT ; 
 int /*<<< orphan*/  REGION_TYPE_EXCLUSIVE ; 
 scalar_t__ REGION_TYPE_UNUSED ; 
 unsigned int FUNC6 (struct MR_DRV_RAID_MAP_ALL*,unsigned int,int) ; 
 scalar_t__ THUNDERBOLT_SERIES ; 
 scalar_t__ VENTURA_SERIES ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct megasas_instance*,unsigned int,int,int /*<<< orphan*/ ,struct MR_DRV_RAID_MAP_ALL*) ; 
 unsigned int FUNC9 (struct megasas_instance*,unsigned int,int /*<<< orphan*/ ,struct MR_DRV_RAID_MAP_ALL*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static u8 FUNC12(struct megasas_instance *instance, u32 ld,
		u64 stripRow, u16 stripRef, struct IO_REQUEST_INFO *io_info,
		struct RAID_CONTEXT *pRAID_Context,
		struct MR_DRV_RAID_MAP_ALL *map)
{
	struct MR_LD_RAID  *raid = FUNC1(ld, map);
	u32     pd, arRef, r1_alt_pd;
	u8      physArm, span;
	u64     row;
	u8	retval = true;
	u64	*pdBlock = &io_info->pdBlock;
	__le16	*pDevHandle = &io_info->devHandle;
	u8	*pPdInterface = &io_info->pd_interface;
	u32	logArm, rowMod, armQ, arm;
	struct fusion_context *fusion;

	fusion = instance->ctrl_context;
	*pDevHandle = FUNC7(MR_DEVHANDLE_INVALID);

	/*Get row and span from io_info for Uneven Span IO.*/
	row	    = io_info->start_row;
	span	    = io_info->start_span;


	if (raid->level == 6) {
		logArm = FUNC9(instance, ld, stripRow, map);
		if (logArm == -1U)
			return false;
		rowMod = FUNC11(row, FUNC6(map, ld, span));
		armQ = FUNC6(map, ld, span) - 1 - rowMod;
		arm = armQ + 1 + logArm;
		if (arm >= FUNC6(map, ld, span))
			arm -= FUNC6(map, ld, span);
		physArm = (u8)arm;
	} else
		/* Calculate the arm */
		physArm = FUNC8(instance, ld, span, stripRow, map);
	if (physArm == 0xFF)
		return false;

	arRef       = FUNC2(ld, span, map);
	pd          = FUNC0(arRef, physArm, map);

	if (pd != MR_PD_INVALID) {
		*pDevHandle = FUNC4(pd, map);
		*pPdInterface = FUNC5(pd, map);
		/* get second pd also for raid 1/10 fast path writes*/
		if ((instance->adapter_type >= VENTURA_SERIES) &&
		    (raid->level == 1) &&
		    !io_info->isRead) {
			r1_alt_pd = FUNC0(arRef, physArm + 1, map);
			if (r1_alt_pd != MR_PD_INVALID)
				io_info->r1_alt_dev_handle =
				FUNC4(r1_alt_pd, map);
		}
	} else {
		if ((raid->level >= 5) &&
			((instance->adapter_type == THUNDERBOLT_SERIES)  ||
			((instance->adapter_type == INVADER_SERIES) &&
			(raid->regTypeReqOnRead != REGION_TYPE_UNUSED))))
			pRAID_Context->reg_lock_flags = REGION_TYPE_EXCLUSIVE;
		else if (raid->level == 1) {
			physArm = physArm + 1;
			pd = FUNC0(arRef, physArm, map);
			if (pd != MR_PD_INVALID) {
				*pDevHandle = FUNC4(pd, map);
				*pPdInterface = FUNC5(pd, map);
			}
		}
	}

	*pdBlock += stripRef + FUNC10(FUNC3(ld, span, map)->startBlk);
	if (instance->adapter_type >= VENTURA_SERIES) {
		((struct RAID_CONTEXT_G35 *)pRAID_Context)->span_arm =
			(span << RAID_CTX_SPANARM_SPAN_SHIFT) | physArm;
		io_info->span_arm =
			(span << RAID_CTX_SPANARM_SPAN_SHIFT) | physArm;
	} else {
		pRAID_Context->span_arm =
			(span << RAID_CTX_SPANARM_SPAN_SHIFT) | physArm;
		io_info->span_arm = pRAID_Context->span_arm;
	}
	io_info->pd_after_lb = pd;
	return retval;
}