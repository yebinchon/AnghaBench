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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  gcr_lock; scalar_t__ gcr_mem_base; } ;

/* Variables and functions */
 TYPE_1__ ipcdev ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

int FUNC4(u32 offset, u32 data)
{
	int ret;

	FUNC1(&ipcdev.gcr_lock);

	ret = FUNC0(offset);
	if (ret < 0) {
		FUNC2(&ipcdev.gcr_lock);
		return ret;
	}

	FUNC3(data, ipcdev.gcr_mem_base + offset);

	FUNC2(&ipcdev.gcr_lock);

	return 0;
}