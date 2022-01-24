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
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int SDEBUG_READCAP_ARR_SZ ; 
 int FUNC0 (struct scsi_cmnd*,unsigned char*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned char*) ; 
 int sdebug_capacity ; 
 int /*<<< orphan*/  sdebug_sector_size ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *scp,
			struct sdebug_dev_info *devip)
{
	unsigned char arr[SDEBUG_READCAP_ARR_SZ];
	unsigned int capac;

	/* following just in case virtual_gb changed */
	sdebug_capacity = FUNC1();
	FUNC2(arr, 0, SDEBUG_READCAP_ARR_SZ);
	if (sdebug_capacity < 0xffffffff) {
		capac = (unsigned int)sdebug_capacity - 1;
		FUNC4(capac, arr + 0);
	} else
		FUNC4(0xffffffff, arr + 0);
	FUNC3(sdebug_sector_size, arr + 6);
	return FUNC0(scp, arr, SDEBUG_READCAP_ARR_SZ);
}