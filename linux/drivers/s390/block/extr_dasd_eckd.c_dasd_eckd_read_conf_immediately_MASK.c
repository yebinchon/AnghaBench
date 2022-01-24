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
struct dasd_device {int /*<<< orphan*/  cdev; } ;
struct dasd_ccw_req {int retries; int /*<<< orphan*/  callback; int /*<<< orphan*/  flags; } ;
struct ciw {scalar_t__ cmd; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  CIW_TYPE_RCD ; 
 int /*<<< orphan*/  DASD_CQR_ALLOW_SLOCK ; 
 int /*<<< orphan*/  DASD_CQR_FLAGS_USE_ERP ; 
 scalar_t__ DASD_ECKD_CCW_RCD ; 
 int EOPNOTSUPP ; 
 struct ciw* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,struct dasd_ccw_req*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  read_conf_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dasd_device *device,
					   struct dasd_ccw_req *cqr,
					   __u8 *rcd_buffer,
					   __u8 lpm)
{
	struct ciw *ciw;
	int rc;
	/*
	 * sanity check: scan for RCD command in extended SenseID data
	 * some devices do not support RCD
	 */
	ciw = FUNC0(device->cdev, CIW_TYPE_RCD);
	if (!ciw || ciw->cmd != DASD_ECKD_CCW_RCD)
		return -EOPNOTSUPP;

	FUNC2(device, cqr, rcd_buffer, lpm);
	FUNC1(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
	FUNC4(DASD_CQR_ALLOW_SLOCK, &cqr->flags);
	cqr->retries = 5;
	cqr->callback = read_conf_cb;
	rc = FUNC3(cqr);
	return rc;
}