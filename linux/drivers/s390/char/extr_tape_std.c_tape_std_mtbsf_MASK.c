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
 int /*<<< orphan*/  BACKSPACEFILE ; 
 scalar_t__ FUNC0 (struct tape_request*) ; 
 int /*<<< orphan*/  MODE_SET_DB ; 
 int /*<<< orphan*/  MTFSR ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_BSF ; 
 struct tape_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ccw1* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ccw1* FUNC4 (struct ccw1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ccw1* FUNC5 (struct ccw1*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct tape_device*,struct tape_request*) ; 
 int FUNC7 (struct tape_device*,int /*<<< orphan*/ ,int) ; 

int
FUNC8(struct tape_device *device, int mt_count)
{
	struct tape_request *request;
	struct ccw1 *ccw;
	int rc;

	request = FUNC2(mt_count + 2, 0);
	if (FUNC0(request))
		return FUNC1(request);
	request->op = TO_BSF;
	/* setup ccws */
	ccw = FUNC3(request->cpaddr, MODE_SET_DB, 1,
			  device->modeset_byte);
	ccw = FUNC5(ccw, BACKSPACEFILE, mt_count);
	ccw = FUNC4(ccw, NOP, 0, NULL);
	/* execute it */
	rc = FUNC6(device, request);
	if (rc == 0) {
		rc = FUNC7(device, MTFSR, 1);
		if (rc > 0)
			rc = 0;
	}
	return rc;
}