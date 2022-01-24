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
struct tape_request {scalar_t__ cpaddr; int /*<<< orphan*/  cpdata; int /*<<< orphan*/  op; } ;
struct tape_device {scalar_t__ tape_state; int /*<<< orphan*/  cdev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_UNASSIGN ; 
 scalar_t__ TS_NOT_OPER ; 
 int /*<<< orphan*/  UNASSIGN ; 
 struct tape_request* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct tape_request*) ; 

int
FUNC8 (struct tape_device *device)
{
	int                  rc;
	struct tape_request *request;

	if (device->tape_state == TS_NOT_OPER) {
		FUNC0(3, "(%08x): Can't unassign device\n",
			device->cdev_id);
		return -EIO;
	}

	request = FUNC3(2, 11);
	if (FUNC1(request))
		return FUNC2(request);

	request->op = TO_UNASSIGN;
	FUNC4(request->cpaddr, UNASSIGN, 11, request->cpdata);
	FUNC5(request->cpaddr + 1, NOP, 0, NULL);

	if ((rc = FUNC6(device, request)) != 0) {
		FUNC0(3, "%08x: Unassign failed\n", device->cdev_id);
	} else {
		FUNC0(3, "%08x: Tape unassigned\n", device->cdev_id);
	}
	FUNC7(request);
	return rc;
}