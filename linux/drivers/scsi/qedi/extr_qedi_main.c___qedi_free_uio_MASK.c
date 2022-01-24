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
struct qedi_uio_dev {int /*<<< orphan*/  pdev; int /*<<< orphan*/  qedi_uinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedi_uio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qedi_uio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct qedi_uio_dev *udev)
{
	FUNC3(&udev->qedi_uinfo);

	FUNC0(udev);

	FUNC2(udev->pdev);
	FUNC1(udev);
}