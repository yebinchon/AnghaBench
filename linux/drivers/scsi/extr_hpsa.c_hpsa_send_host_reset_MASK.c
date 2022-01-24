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
typedef  int /*<<< orphan*/  u8 ;
struct ctlr_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * CDB; } ;
struct CommandList {int /*<<< orphan*/ * waiting; TYPE_1__ Request; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPSA_DEVICE_RESET_MSG ; 
 int /*<<< orphan*/  RAID_CTLR_LUNID ; 
 int /*<<< orphan*/  TYPE_MSG ; 
 struct CommandList* FUNC0 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC2 (struct CommandList*,int /*<<< orphan*/ ,struct ctlr_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ctlr_info *h, u8 reset_type)
{
	struct CommandList *c;

	c = FUNC0(h);

	/* fill_cmd can't fail here, no data buffer to map */
	(void) FUNC2(c, HPSA_DEVICE_RESET_MSG, h, NULL, 0, 0,
		RAID_CTLR_LUNID, TYPE_MSG);
	c->Request.CDB[1] = reset_type; /* fill_cmd defaults to target reset */
	c->waiting = NULL;
	FUNC1(h, c);
	/* Don't wait for completion, the reset won't complete.  Don't free
	 * the command either.  This is the last command we will send before
	 * re-initializing everything, so it doesn't matter and won't leak.
	 */
	return;
}