#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; struct device* parent; } ;
struct TYPE_8__ {TYPE_1__ device; int /*<<< orphan*/ * vfio_ap_drv; int /*<<< orphan*/  mdev_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  VFIO_AP_DEV_NAME ; 
 int /*<<< orphan*/  VFIO_AP_ROOT_NAME ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  matrix_bus ; 
 TYPE_2__* matrix_dev ; 
 int /*<<< orphan*/  matrix_driver ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 struct device* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  vfio_ap_drv ; 
 int /*<<< orphan*/  vfio_ap_matrix_dev_release ; 

__attribute__((used)) static int FUNC16(void)
{
	int ret;
	struct device *root_device;

	root_device = FUNC13(VFIO_AP_ROOT_NAME);
	if (FUNC1(root_device))
		return FUNC2(root_device);

	ret = FUNC4(&matrix_bus);
	if (ret)
		goto bus_register_err;

	matrix_dev = FUNC10(sizeof(*matrix_dev), GFP_KERNEL);
	if (!matrix_dev) {
		ret = -ENOMEM;
		goto matrix_alloc_err;
	}

	/* Fill in config info via PQAP(QCI), if available */
	if (FUNC15(12)) {
		ret = FUNC3(&matrix_dev->info);
		if (ret)
			goto matrix_alloc_err;
	}

	FUNC11(&matrix_dev->lock);
	FUNC0(&matrix_dev->mdev_list);

	FUNC6(&matrix_dev->device, "%s", VFIO_AP_DEV_NAME);
	matrix_dev->device.parent = root_device;
	matrix_dev->device.bus = &matrix_bus;
	matrix_dev->device.release = vfio_ap_matrix_dev_release;
	matrix_dev->vfio_ap_drv = &vfio_ap_drv;

	ret = FUNC7(&matrix_dev->device);
	if (ret)
		goto matrix_reg_err;

	ret = FUNC9(&matrix_driver);
	if (ret)
		goto matrix_drv_err;

	return 0;

matrix_drv_err:
	FUNC8(&matrix_dev->device);
matrix_reg_err:
	FUNC12(&matrix_dev->device);
matrix_alloc_err:
	FUNC5(&matrix_bus);
bus_register_err:
	FUNC14(root_device);
	return ret;
}