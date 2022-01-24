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
struct uio_device {int minor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UIO_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct uio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minor_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uio_idr ; 

__attribute__((used)) static int FUNC4(struct uio_device *idev)
{
	int retval = -ENOMEM;

	FUNC2(&minor_lock);
	retval = FUNC1(&uio_idr, idev, 0, UIO_MAX_DEVICES, GFP_KERNEL);
	if (retval >= 0) {
		idev->minor = retval;
		retval = 0;
	} else if (retval == -ENOSPC) {
		FUNC0(&idev->dev, "too many uio devices\n");
		retval = -EINVAL;
	}
	FUNC3(&minor_lock);
	return retval;
}