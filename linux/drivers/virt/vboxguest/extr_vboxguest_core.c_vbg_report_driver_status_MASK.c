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
struct vmmdev_guest_status {scalar_t__ flags; int /*<<< orphan*/  status; int /*<<< orphan*/  facility; } ;
struct vbg_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VBG_KERNEL_REQUEST ; 
 int /*<<< orphan*/  VBOXGUEST_FACILITY_STATUS_ACTIVE ; 
 int /*<<< orphan*/  VBOXGUEST_FACILITY_STATUS_INACTIVE ; 
 int /*<<< orphan*/  VBOXGUEST_FACILITY_TYPE_VBOXGUEST_DRIVER ; 
 int VERR_NOT_IMPLEMENTED ; 
 int VINF_SUCCESS ; 
 int /*<<< orphan*/  VMMDEVREQ_REPORT_GUEST_STATUS ; 
 struct vmmdev_guest_status* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmmdev_guest_status*,int) ; 
 int FUNC2 (struct vbg_dev*,struct vmmdev_guest_status*) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct vbg_dev *gdev, bool active)
{
	struct vmmdev_guest_status *req;
	int rc;

	req = FUNC0(sizeof(*req), VMMDEVREQ_REPORT_GUEST_STATUS,
			    VBG_KERNEL_REQUEST);
	if (!req)
		return -ENOMEM;

	req->facility = VBOXGUEST_FACILITY_TYPE_VBOXGUEST_DRIVER;
	if (active)
		req->status = VBOXGUEST_FACILITY_STATUS_ACTIVE;
	else
		req->status = VBOXGUEST_FACILITY_STATUS_INACTIVE;
	req->flags = 0;

	rc = FUNC2(gdev, req);
	if (rc == VERR_NOT_IMPLEMENTED)	/* Compatibility with older hosts. */
		rc = VINF_SUCCESS;

	FUNC1(req, sizeof(*req));

	return FUNC3(rc);
}