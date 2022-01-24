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
struct vbg_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct vbg_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vbg_dev* vbg_gdev ; 
 int /*<<< orphan*/  vbg_gdev_mutex ; 

struct vbg_dev *FUNC3(void)
{
	FUNC1(&vbg_gdev_mutex);

	/*
	 * Note on success we keep the mutex locked until vbg_put_gdev(),
	 * this stops vbg_pci_remove from removing the device from underneath
	 * vboxsf. vboxsf will only hold a reference for a short while.
	 */
	if (vbg_gdev)
		return vbg_gdev;

	FUNC2(&vbg_gdev_mutex);
	return FUNC0(-ENODEV);
}