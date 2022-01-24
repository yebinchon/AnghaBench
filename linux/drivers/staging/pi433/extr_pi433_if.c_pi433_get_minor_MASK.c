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
struct pi433_device {int minor; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  N_PI433_MINORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pi433_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minor_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pi433_idr ; 

__attribute__((used)) static int FUNC4(struct pi433_device *device)
{
	int retval = -ENOMEM;

	FUNC2(&minor_lock);
	retval = FUNC1(&pi433_idr, device, 0, N_PI433_MINORS, GFP_KERNEL);
	if (retval >= 0) {
		device->minor = retval;
		retval = 0;
	} else if (retval == -ENOSPC) {
		FUNC0(&device->spi->dev, "too many pi433 devices\n");
		retval = -EINVAL;
	}
	FUNC3(&minor_lock);
	return retval;
}