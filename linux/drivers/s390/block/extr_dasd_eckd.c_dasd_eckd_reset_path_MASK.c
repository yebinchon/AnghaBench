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
struct dasd_eckd_private {scalar_t__ fcx_max_data; } ;
struct dasd_device {int /*<<< orphan*/  cdev; struct dasd_eckd_private* private; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct dasd_device *device, __u8 pm)
{
	struct dasd_eckd_private *private = device->private;
	unsigned long flags;

	if (!private->fcx_max_data)
		private->fcx_max_data = FUNC4(device);
	FUNC5(FUNC3(device->cdev), flags);
	FUNC1(device, pm ? : FUNC0(device));
	FUNC2(device);
	FUNC6(FUNC3(device->cdev), flags);
}