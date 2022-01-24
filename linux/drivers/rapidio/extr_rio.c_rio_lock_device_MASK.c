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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rio_mport {scalar_t__ host_deviceid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RIO_HOST_DID_LOCK_CSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(struct rio_mport *port, u16 destid,
		    u8 hopcount, int wait_ms)
{
	u32 result;
	int tcnt = 0;

	/* Attempt to acquire device lock */
	FUNC3(port, destid, hopcount,
				  RIO_HOST_DID_LOCK_CSR, port->host_deviceid);
	FUNC2(port, destid, hopcount,
				 RIO_HOST_DID_LOCK_CSR, &result);

	while (result != port->host_deviceid) {
		if (wait_ms != 0 && tcnt == wait_ms) {
			FUNC1("RIO: timeout when locking device %x:%x\n",
				destid, hopcount);
			return -EINVAL;
		}

		/* Delay a bit */
		FUNC0(1);
		tcnt++;
		/* Try to acquire device lock again */
		FUNC3(port, destid,
			hopcount,
			RIO_HOST_DID_LOCK_CSR,
			port->host_deviceid);
		FUNC2(port, destid,
			hopcount,
			RIO_HOST_DID_LOCK_CSR, &result);
	}

	return 0;
}