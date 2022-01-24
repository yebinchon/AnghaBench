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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct cmdq_pkt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDQ_CODE_MASK ; 
 int CMDQ_WRITE_ENABLE_MASK ; 
 int FUNC0 (struct cmdq_pkt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cmdq_pkt*,int,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct cmdq_pkt *pkt, u8 subsys,
			u16 offset, u32 value, u32 mask)
{
	u32 offset_mask = offset;
	int err = 0;

	if (mask != 0xffffffff) {
		err = FUNC0(pkt, CMDQ_CODE_MASK, 0, ~mask);
		offset_mask |= CMDQ_WRITE_ENABLE_MASK;
	}
	err |= FUNC1(pkt, value, subsys, offset_mask);

	return err;
}