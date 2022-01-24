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
typedef  unsigned int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  unsigned int u32 ;
struct megasas_instance {int dummy; } ;
struct MR_LD_RAID {int level; } ;
struct MR_DRV_RAID_MAP_ALL {int dummy; } ;

/* Variables and functions */
 struct MR_LD_RAID* FUNC0 (unsigned int,struct MR_DRV_RAID_MAP_ALL*) ; 
 int /*<<< orphan*/  FUNC1 (struct MR_DRV_RAID_MAP_ALL*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct megasas_instance*,unsigned int,int /*<<< orphan*/ ,struct MR_DRV_RAID_MAP_ALL*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u8 FUNC4(struct megasas_instance *instance, u32 ld, u8 span, u64 stripe,
		struct MR_DRV_RAID_MAP_ALL *map)
{
	struct MR_LD_RAID  *raid = FUNC0(ld, map);
	/* Need to check correct default value */
	u32    arm = 0;

	switch (raid->level) {
	case 0:
	case 5:
	case 6:
		arm = FUNC3(stripe, FUNC1(map, ld, span));
		break;
	case 1:
		/* start with logical arm */
		arm = FUNC2(instance, ld, stripe, map);
		if (arm != -1U)
			arm *= 2;
		break;
	}

	return arm;
}