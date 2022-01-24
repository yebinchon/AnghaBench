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
typedef  int /*<<< orphan*/  u16 ;
struct us_data {int /*<<< orphan*/  send_bulk_pipe; int /*<<< orphan*/  recv_bulk_pipe; int /*<<< orphan*/  dflags; int /*<<< orphan*/  delay_wait; int /*<<< orphan*/  send_ctrl_pipe; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  US_FLIDX_DISCONNECTING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct us_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct us_data *us,
		u8 request, u8 requesttype,
		u16 value, u16 index, void *data, u16 size)
{
	int result;
	int result2;

	if (FUNC0(US_FLIDX_DISCONNECTING, &us->dflags)) {
		FUNC3(us, "No reset during disconnect\n");
		return -EIO;
	}

	result = FUNC2(us, us->send_ctrl_pipe,
			request, requesttype, value, index, data, size,
			5*HZ);
	if (result < 0) {
		FUNC3(us, "Soft reset failed: %d\n", result);
		return result;
	}

	/*
	 * Give the device some time to recover from the reset,
	 * but don't delay disconnect processing.
	 */
	FUNC4(us->delay_wait,
			FUNC0(US_FLIDX_DISCONNECTING, &us->dflags),
			HZ*6);
	if (FUNC0(US_FLIDX_DISCONNECTING, &us->dflags)) {
		FUNC3(us, "Reset interrupted by disconnect\n");
		return -EIO;
	}

	FUNC3(us, "Soft reset: clearing bulk-in endpoint halt\n");
	result = FUNC1(us, us->recv_bulk_pipe);

	FUNC3(us, "Soft reset: clearing bulk-out endpoint halt\n");
	result2 = FUNC1(us, us->send_bulk_pipe);

	/* return a result code based on the result of the clear-halts */
	if (result >= 0)
		result = result2;
	if (result < 0)
		FUNC3(us, "Soft reset failed\n");
	else
		FUNC3(us, "Soft reset done\n");
	return result;
}