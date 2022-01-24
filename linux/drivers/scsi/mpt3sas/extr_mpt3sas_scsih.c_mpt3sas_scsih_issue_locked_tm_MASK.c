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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct MPT3SAS_ADAPTER {TYPE_1__ tm_cmds; } ;

/* Variables and functions */
 int FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct MPT3SAS_ADAPTER *ioc, u16 handle,
		u64 lun, u8 type, u16 smid_task, u16 msix_task,
		u8 timeout, u8 tr_method)
{
	int ret;

	FUNC1(&ioc->tm_cmds.mutex);
	ret = FUNC0(ioc, handle, lun, type, smid_task,
			msix_task, timeout, tr_method);
	FUNC2(&ioc->tm_cmds.mutex);

	return ret;
}