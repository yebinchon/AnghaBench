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
struct tape_request {scalar_t__ cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {int /*<<< orphan*/ * modeset_byte; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SEC_ERASE ; 
 int /*<<< orphan*/  ERASE_GAP ; 
 scalar_t__ FUNC0 (struct tape_request*) ; 
 int /*<<< orphan*/  MODE_SET_DB ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  REWIND ; 
 int /*<<< orphan*/  TO_DSE ; 
 struct tape_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tape_device*,struct tape_request*) ; 

int
FUNC6(struct tape_device *device, int mt_count)
{
	struct tape_request *request;

	request = FUNC2(6, 0);
	if (FUNC0(request))
		return FUNC1(request);
	request->op = TO_DSE;
	/* setup ccws */
	FUNC3(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
	FUNC3(request->cpaddr + 1, REWIND, 0, NULL);
	FUNC3(request->cpaddr + 2, ERASE_GAP, 0, NULL);
	FUNC3(request->cpaddr + 3, DATA_SEC_ERASE, 0, NULL);
	FUNC3(request->cpaddr + 4, REWIND, 0, NULL);
	FUNC4(request->cpaddr + 5, NOP, 0, NULL);

	/* execute it */
	return FUNC5(device, request);
}