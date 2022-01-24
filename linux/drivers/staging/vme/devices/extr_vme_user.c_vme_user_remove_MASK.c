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
struct vme_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  resource; int /*<<< orphan*/  pci_buf; int /*<<< orphan*/  kern_buf; int /*<<< orphan*/  size_buf; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int MASTER_MAX ; 
 int MASTER_MINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int SLAVE_MAX ; 
 int SLAVE_MINOR ; 
 int /*<<< orphan*/  VME_A32 ; 
 int VME_DEVS ; 
 int /*<<< orphan*/  VME_MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* image ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vme_user_cdev ; 
 int /*<<< orphan*/  vme_user_sysfs_class ; 

__attribute__((used)) static int FUNC11(struct vme_dev *dev)
{
	int i;

	/* Remove sysfs Entries */
	for (i = 0; i < VME_DEVS; i++) {
		FUNC5(&image[i].mutex);
		FUNC3(vme_user_sysfs_class, FUNC0(VME_MAJOR, i));
	}
	FUNC2(vme_user_sysfs_class);

	for (i = MASTER_MINOR; i < (MASTER_MAX + 1); i++) {
		FUNC4(image[i].kern_buf);
		FUNC8(image[i].resource);
	}

	for (i = SLAVE_MINOR; i < (SLAVE_MAX + 1); i++) {
		FUNC10(image[i].resource, 0, 0, 0, 0, VME_A32, 0);
		FUNC7(image[i].resource, image[i].size_buf,
				    image[i].kern_buf, image[i].pci_buf);
		FUNC9(image[i].resource);
	}

	/* Unregister device driver */
	FUNC1(vme_user_cdev);

	/* Unregister the major and minor device numbers */
	FUNC6(FUNC0(VME_MAJOR, 0), VME_DEVS);

	return 0;
}