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
struct vfio_platform_device {int /*<<< orphan*/  reset_module; scalar_t__ of_reset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfio_platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vfio_platform_device *vdev)
{
	if (FUNC0(vdev))
		return;

	if (vdev->of_reset)
		FUNC1(vdev->reset_module);
}