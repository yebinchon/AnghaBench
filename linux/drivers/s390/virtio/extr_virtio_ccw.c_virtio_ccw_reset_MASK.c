#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct virtio_device {int dummy; } ;
struct virtio_ccw_device {int /*<<< orphan*/  cdev; TYPE_1__* dma_area; } ;
struct ccw1 {scalar_t__ cda; scalar_t__ count; scalar_t__ flags; int /*<<< orphan*/  cmd_code; } ;
struct TYPE_2__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_VDEV_RESET ; 
 int /*<<< orphan*/  VIRTIO_CCW_DOING_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ccw1*,int) ; 
 struct ccw1* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_ccw_device*,struct ccw1*,int /*<<< orphan*/ ) ; 
 struct virtio_ccw_device* FUNC3 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC4(struct virtio_device *vdev)
{
	struct virtio_ccw_device *vcdev = FUNC3(vdev);
	struct ccw1 *ccw;

	ccw = FUNC1(vcdev->cdev, sizeof(*ccw));
	if (!ccw)
		return;

	/* Zero status bits. */
	vcdev->dma_area->status = 0;

	/* Send a reset ccw on device. */
	ccw->cmd_code = CCW_CMD_VDEV_RESET;
	ccw->flags = 0;
	ccw->count = 0;
	ccw->cda = 0;
	FUNC2(vcdev, ccw, VIRTIO_CCW_DOING_RESET);
	FUNC0(vcdev->cdev, ccw, sizeof(*ccw));
}