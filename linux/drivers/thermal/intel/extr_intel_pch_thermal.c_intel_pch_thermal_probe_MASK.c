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
struct pci_device_id {int driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pch_thermal_device {int /*<<< orphan*/  hw_base; int /*<<< orphan*/  tzd; TYPE_1__* ops; struct pci_dev* pdev; } ;
struct board_info {int /*<<< orphan*/  name; TYPE_1__* ops; } ;
typedef  enum board_ids { ____Placeholder_board_ids } board_ids ;
struct TYPE_2__ {int (* hw_init ) (struct pch_thermal_device*,int*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct board_info* board_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct pch_thermal_device* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct pch_thermal_device*) ; 
 int FUNC11 (struct pch_thermal_device*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct pch_thermal_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tzd_ops ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev,
				   const struct pci_device_id *id)
{
	enum board_ids board_id = id->driver_data;
	const struct board_info *bi = &board_info[board_id];
	struct pch_thermal_device *ptd;
	int err;
	int nr_trips;

	ptd = FUNC3(&pdev->dev, sizeof(*ptd), GFP_KERNEL);
	if (!ptd)
		return -ENOMEM;

	ptd->ops = bi->ops;

	FUNC10(pdev, ptd);
	ptd->pdev = pdev;

	err = FUNC6(pdev);
	if (err) {
		FUNC2(&pdev->dev, "failed to enable pci device\n");
		return err;
	}

	err = FUNC9(pdev, driver_name);
	if (err) {
		FUNC2(&pdev->dev, "failed to request pci region\n");
		goto error_disable;
	}

	ptd->hw_base = FUNC7(pdev, 0);
	if (!ptd->hw_base) {
		err = -ENOMEM;
		FUNC2(&pdev->dev, "failed to map mem base\n");
		goto error_release;
	}

	err = ptd->ops->hw_init(ptd, &nr_trips);
	if (err)
		goto error_cleanup;

	ptd->tzd = FUNC12(bi->name, nr_trips, 0, ptd,
						&tzd_ops, NULL, 0, 0);
	if (FUNC0(ptd->tzd)) {
		FUNC2(&pdev->dev, "Failed to register thermal zone %s\n",
			bi->name);
		err = FUNC1(ptd->tzd);
		goto error_cleanup;
	}

	return 0;

error_cleanup:
	FUNC4(ptd->hw_base);
error_release:
	FUNC8(pdev);
error_disable:
	FUNC5(pdev);
	FUNC2(&pdev->dev, "pci device failed to probe\n");
	return err;
}