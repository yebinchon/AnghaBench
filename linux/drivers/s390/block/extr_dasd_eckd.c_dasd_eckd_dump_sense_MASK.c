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
struct irb {int /*<<< orphan*/  scsw; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_SUPPRESS_CR ; 
 int /*<<< orphan*/  DASD_CQR_SUPPRESS_FP ; 
 int /*<<< orphan*/  DASD_CQR_SUPPRESS_IL ; 
 int /*<<< orphan*/  DASD_CQR_SUPPRESS_NRF ; 
 int SNS0_CMD_REJECT ; 
 int SNS1_FILE_PROTECTED ; 
 int SNS1_NO_REC_FOUND ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ; 
 int* FUNC2 (struct irb*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dasd_device *device,
				 struct dasd_ccw_req *req, struct irb *irb)
{
	u8 *sense = FUNC2(irb);

	if (FUNC4(&irb->scsw)) {
		/*
		 * In some cases the 'File Protected' or 'Incorrect Length'
		 * error might be expected and log messages shouldn't be written
		 * then. Check if the according suppress bit is set.
		 */
		if (sense && (sense[1] & SNS1_FILE_PROTECTED) &&
		    FUNC5(DASD_CQR_SUPPRESS_FP, &req->flags))
			return;
		if (FUNC3(&irb->scsw) == 0x40 &&
		    FUNC5(DASD_CQR_SUPPRESS_IL, &req->flags))
			return;

		FUNC1(device, req, irb);
	} else {
		/*
		 * In some cases the 'Command Reject' or 'No Record Found'
		 * error might be expected and log messages shouldn't be
		 * written then. Check if the according suppress bit is set.
		 */
		if (sense && sense[0] & SNS0_CMD_REJECT &&
		    FUNC5(DASD_CQR_SUPPRESS_CR, &req->flags))
			return;

		if (sense && sense[1] & SNS1_NO_REC_FOUND &&
		    FUNC5(DASD_CQR_SUPPRESS_NRF, &req->flags))
			return;

		FUNC0(device, req, irb);
	}
}