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
typedef  int /*<<< orphan*/  uint32_t ;
struct rcom_slot {int ro_slot; int ro_nodeid; } ;
struct dlm_slot {int nodeid; int slot; } ;
struct dlm_ls {int dummy; } ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int SLOT_DEBUG_LINE ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,int,char*,int,int) ; 

__attribute__((used)) static void FUNC3(struct dlm_ls *ls, uint32_t gen, int num_slots,
		      struct rcom_slot *ro0, struct dlm_slot *array,
		      int array_size)
{
	char line[SLOT_DEBUG_LINE];
	int len = SLOT_DEBUG_LINE - 1;
	int pos = 0;
	int ret, i;

	FUNC1(line, 0, sizeof(line));

	if (array) {
		for (i = 0; i < array_size; i++) {
			if (!array[i].nodeid)
				continue;

			ret = FUNC2(line + pos, len - pos, " %d:%d",
				       array[i].slot, array[i].nodeid);
			if (ret >= len - pos)
				break;
			pos += ret;
		}
	} else if (ro0) {
		for (i = 0; i < num_slots; i++) {
			ret = FUNC2(line + pos, len - pos, " %d:%d",
				       ro0[i].ro_slot, ro0[i].ro_nodeid);
			if (ret >= len - pos)
				break;
			pos += ret;
		}
	}

	FUNC0(ls, "generation %u slots %d%s", gen, num_slots, line);
}