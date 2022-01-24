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
struct virtio_rev_info {int count; scalar_t__ revision; scalar_t__ length; scalar_t__ cda; scalar_t__ flags; int /*<<< orphan*/  cmd_code; } ;
struct virtio_ccw_device {scalar_t__ revision; int /*<<< orphan*/  cdev; } ;
struct ccw1 {int count; scalar_t__ revision; scalar_t__ length; scalar_t__ cda; scalar_t__ flags; int /*<<< orphan*/  cmd_code; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_SET_VIRTIO_REV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  VIRTIO_CCW_DOING_SET_VIRTIO_REV ; 
 scalar_t__ VIRTIO_CCW_REV_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct virtio_rev_info*,int) ; 
 struct virtio_rev_info* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct virtio_ccw_device*,struct virtio_rev_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct virtio_ccw_device *vcdev)
{
	struct virtio_rev_info *rev;
	struct ccw1 *ccw;
	int ret;

	ccw = FUNC1(vcdev->cdev, sizeof(*ccw));
	if (!ccw)
		return -ENOMEM;
	rev = FUNC1(vcdev->cdev, sizeof(*rev));
	if (!rev) {
		FUNC0(vcdev->cdev, ccw, sizeof(*ccw));
		return -ENOMEM;
	}

	/* Set transport revision */
	ccw->cmd_code = CCW_CMD_SET_VIRTIO_REV;
	ccw->flags = 0;
	ccw->count = sizeof(*rev);
	ccw->cda = (__u32)(unsigned long)rev;

	vcdev->revision = VIRTIO_CCW_REV_MAX;
	do {
		rev->revision = vcdev->revision;
		/* none of our supported revisions carry payload */
		rev->length = 0;
		ret = FUNC2(vcdev, ccw,
				    VIRTIO_CCW_DOING_SET_VIRTIO_REV);
		if (ret == -EOPNOTSUPP) {
			if (vcdev->revision == 0)
				/*
				 * The host device does not support setting
				 * the revision: let's operate it in legacy
				 * mode.
				 */
				ret = 0;
			else
				vcdev->revision--;
		}
	} while (ret == -EOPNOTSUPP);

	FUNC0(vcdev->cdev, ccw, sizeof(*ccw));
	FUNC0(vcdev->cdev, rev, sizeof(*rev));
	return ret;
}