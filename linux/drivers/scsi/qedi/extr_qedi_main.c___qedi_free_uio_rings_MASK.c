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
struct qedi_uio_dev {int /*<<< orphan*/ * ll2_buf; int /*<<< orphan*/ * ll2_ring; int /*<<< orphan*/ * uctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 

__attribute__((used)) static void FUNC2(struct qedi_uio_dev *udev)
{
	if (udev->uctrl) {
		FUNC0((unsigned long)udev->uctrl);
		udev->uctrl = NULL;
	}

	if (udev->ll2_ring) {
		FUNC0((unsigned long)udev->ll2_ring);
		udev->ll2_ring = NULL;
	}

	if (udev->ll2_buf) {
		FUNC1((unsigned long)udev->ll2_buf, 2);
		udev->ll2_buf = NULL;
	}
}