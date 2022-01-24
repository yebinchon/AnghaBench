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
typedef  int u32 ;
struct TYPE_2__ {int gcr_mem_base; int /*<<< orphan*/  gcr_lock; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_1__ ipcdev ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

int FUNC5(u32 offset, u32 mask, u32 val)
{
	u32 new_val;
	int ret = 0;

	FUNC2(&ipcdev.gcr_lock);

	ret = FUNC0(offset);
	if (ret < 0)
		goto gcr_ipc_unlock;

	new_val = FUNC1(ipcdev.gcr_mem_base + offset);

	new_val &= ~mask;
	new_val |= val & mask;

	FUNC4(new_val, ipcdev.gcr_mem_base + offset);

	new_val = FUNC1(ipcdev.gcr_mem_base + offset);

	/* check whether the bit update is successful */
	if ((new_val & mask) != (val & mask)) {
		ret = -EIO;
		goto gcr_ipc_unlock;
	}

gcr_ipc_unlock:
	FUNC3(&ipcdev.gcr_lock);
	return ret;
}