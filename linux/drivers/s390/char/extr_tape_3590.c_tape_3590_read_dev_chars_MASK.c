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
struct tape_request {int /*<<< orphan*/  cpdata; int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {int dummy; } ;
struct tape_3590_rdc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_RDC ; 
 scalar_t__ FUNC0 (struct tape_request*) ; 
 int FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_RDC ; 
 int /*<<< orphan*/  FUNC2 (struct tape_3590_rdc_data*,int /*<<< orphan*/ ,int) ; 
 struct tape_request* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct tape_request*) ; 

__attribute__((used)) static int FUNC7(struct tape_device *device,
				    struct tape_3590_rdc_data *rdc_data)
{
	int rc;
	struct tape_request *request;

	request = FUNC3(1, sizeof(*rdc_data));
	if (FUNC0(request))
		return FUNC1(request);
	request->op = TO_RDC;
	FUNC4(request->cpaddr, CCW_CMD_RDC, sizeof(*rdc_data),
		     request->cpdata);
	rc = FUNC5(device, request);
	if (rc == 0)
		FUNC2(rdc_data, request->cpdata, sizeof(*rdc_data));
	FUNC6(request);
	return rc;
}