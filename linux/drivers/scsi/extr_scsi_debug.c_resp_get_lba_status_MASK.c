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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int* cmnd; } ;

/* Variables and functions */
 int SDEBUG_GET_LBA_STATUS_LEN ; 
 int FUNC0 (struct scsi_cmnd*,int,int,int) ; 
 int FUNC1 (struct scsi_cmnd*,int*,int) ; 
 int FUNC2 () ; 
 int FUNC3 (int*) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,int*) ; 
 scalar_t__ FUNC9 () ; 
 int sdebug_capacity ; 

__attribute__((used)) static int FUNC10(struct scsi_cmnd *scp,
			       struct sdebug_dev_info *devip)
{
	u8 *cmd = scp->cmnd;
	u64 lba;
	u32 alloc_len, mapped, num;
	u8 arr[SDEBUG_GET_LBA_STATUS_LEN];
	int ret;

	lba = FUNC4(cmd + 2);
	alloc_len = FUNC3(cmd + 10);

	if (alloc_len < 24)
		return 0;

	ret = FUNC0(scp, lba, 1, false);
	if (ret)
		return ret;

	if (FUNC9())
		mapped = FUNC5(lba, &num);
	else {
		mapped = 1;
		/* following just in case virtual_gb changed */
		sdebug_capacity = FUNC2();
		if (sdebug_capacity - lba <= 0xffffffff)
			num = sdebug_capacity - lba;
		else
			num = 0xffffffff;
	}

	FUNC6(arr, 0, SDEBUG_GET_LBA_STATUS_LEN);
	FUNC7(20, arr);		/* Parameter Data Length */
	FUNC8(lba, arr + 8);	/* LBA */
	FUNC7(num, arr + 16);	/* Number of blocks */
	arr[20] = !mapped;		/* prov_stat=0: mapped; 1: dealloc */

	return FUNC1(scp, arr, SDEBUG_GET_LBA_STATUS_LEN);
}