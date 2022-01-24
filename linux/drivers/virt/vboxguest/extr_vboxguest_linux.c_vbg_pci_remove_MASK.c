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
struct vbg_dev {int /*<<< orphan*/  misc_device; int /*<<< orphan*/  misc_device_user; int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_host_features ; 
 int /*<<< orphan*/  dev_attr_host_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct vbg_dev* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct vbg_dev*) ; 
 int /*<<< orphan*/ * vbg_gdev ; 
 int /*<<< orphan*/  vbg_gdev_mutex ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pci)
{
	struct vbg_dev *gdev = FUNC5(pci);

	FUNC2(&vbg_gdev_mutex);
	vbg_gdev = NULL;
	FUNC3(&vbg_gdev_mutex);

	FUNC0(gdev->dev, &dev_attr_host_features);
	FUNC0(gdev->dev, &dev_attr_host_version);
	FUNC1(&gdev->misc_device_user);
	FUNC1(&gdev->misc_device);
	FUNC6(gdev);
	FUNC4(pci);
}