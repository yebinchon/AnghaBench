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
typedef  int u32 ;
struct mvs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ MVS_COMMAND_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (struct mvs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_info*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct mvs_info *mvi, u32 slot_idx)
{
	u32 tmp;
	tmp = FUNC1(mvi, MVS_COMMAND_ACTIVE+(slot_idx >> 3));
	if (tmp & 1 << (slot_idx % 32)) {
		FUNC0("command active %08X,  slot [%x].\n", tmp, slot_idx);
		FUNC2(mvi, MVS_COMMAND_ACTIVE + (slot_idx >> 3),
			1 << (slot_idx % 32));
		do {
			tmp = FUNC1(mvi,
				MVS_COMMAND_ACTIVE + (slot_idx >> 3));
		} while (tmp & 1 << (slot_idx % 32));
	}
}