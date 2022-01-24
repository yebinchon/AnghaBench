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
struct TYPE_2__ {scalar_t__ devid; } ;
struct usbip_header {TYPE_1__ base; } ;
struct usbip_device {scalar_t__ status; int /*<<< orphan*/  lock; } ;
struct stub_device {scalar_t__ devid; struct usbip_device ud; } ;

/* Variables and functions */
 scalar_t__ SDEV_ST_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct stub_device *sdev, struct usbip_header *pdu)
{
	struct usbip_device *ud = &sdev->ud;
	int valid = 0;

	if (pdu->base.devid == sdev->devid) {
		FUNC0(&ud->lock);
		if (ud->status == SDEV_ST_USED) {
			/* A request is valid. */
			valid = 1;
		}
		FUNC1(&ud->lock);
	}

	return valid;
}