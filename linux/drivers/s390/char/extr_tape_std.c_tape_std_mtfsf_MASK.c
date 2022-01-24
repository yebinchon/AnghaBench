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
struct tape_request {int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {int /*<<< orphan*/  modeset_byte; } ;
struct ccw1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORSPACEFILE ; 
 scalar_t__ FUNC0 (struct tape_request*) ; 
 int /*<<< orphan*/  MODE_SET_DB ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_FSF ; 
 struct tape_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ccw1* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ccw1* FUNC4 (struct ccw1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ccw1* FUNC5 (struct ccw1*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct tape_device*,struct tape_request*) ; 

int
FUNC7(struct tape_device *device, int mt_count)
{
	struct tape_request *request;
	struct ccw1 *ccw;

	request = FUNC2(mt_count + 2, 0);
	if (FUNC0(request))
		return FUNC1(request);
	request->op = TO_FSF;
	/* setup ccws */
	ccw = FUNC3(request->cpaddr, MODE_SET_DB, 1,
			  device->modeset_byte);
	ccw = FUNC5(ccw, FORSPACEFILE, mt_count);
	ccw = FUNC4(ccw, NOP, 0, NULL);

	/* execute it */
	return FUNC6(device, request);
}