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
struct pqi_ctrl_info {int pqi_mode_enabled; int controller_online; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_MODE_MSIX ; 
 int /*<<< orphan*/  PQI_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_ctrl_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pqi_ctrl_info*) ; 
 int FUNC3 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*) ; 
 int FUNC5 (struct pqi_ctrl_info*) ; 
 int FUNC6 (struct pqi_ctrl_info*) ; 
 int FUNC7 (struct pqi_ctrl_info*) ; 
 int FUNC8 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct pqi_ctrl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct pqi_ctrl_info*) ; 
 int FUNC13 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct pqi_ctrl_info*) ; 
 int FUNC15 (struct pqi_ctrl_info*) ; 
 int FUNC16 (struct pqi_ctrl_info*) ; 
 int FUNC17 (struct pqi_ctrl_info*) ; 
 int FUNC18 (struct pqi_ctrl_info*) ; 
 int FUNC19 (struct pqi_ctrl_info*) ; 
 int FUNC20 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static int FUNC21(struct pqi_ctrl_info *ctrl_info)
{
	int rc;

	rc = FUNC6(ctrl_info);
	if (rc)
		return rc;

	/*
	 * Wait until the controller is ready to start accepting SIS
	 * commands.
	 */
	rc = FUNC20(ctrl_info);
	if (rc)
		return rc;

	/*
	 * Get the controller properties.  This allows us to determine
	 * whether or not it supports PQI mode.
	 */
	rc = FUNC17(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error obtaining controller properties\n");
		return rc;
	}

	rc = FUNC18(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error obtaining controller capabilities\n");
		return rc;
	}

	/*
	 * If the function we are about to call succeeds, the
	 * controller will transition from legacy SIS mode
	 * into PQI mode.
	 */
	rc = FUNC19(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error initializing PQI mode\n");
		return rc;
	}

	/* Wait for the controller to complete the SIS -> PQI transition. */
	rc = FUNC15(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"transition to PQI mode failed\n");
		return rc;
	}

	/* From here on, we are running in PQI mode. */
	ctrl_info->pqi_mode_enabled = true;
	FUNC10(ctrl_info, PQI_MODE);

	FUNC9(ctrl_info);

	rc = FUNC2(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error creating admin queues\n");
		return rc;
	}

	rc = FUNC3(ctrl_info);
	if (rc)
		return rc;

	FUNC1(ctrl_info, IRQ_MODE_MSIX);

	ctrl_info->controller_online = true;
	FUNC4(ctrl_info);

	rc = FUNC8(ctrl_info);
	if (rc)
		return rc;

	FUNC14(ctrl_info);

	rc = FUNC5(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error enabling events\n");
		return rc;
	}

	rc = FUNC7(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error obtaining product detail\n");
		return rc;
	}

	rc = FUNC13(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error enabling multi-lun rescan\n");
		return rc;
	}

	rc = FUNC16(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error updating host wellness\n");
		return rc;
	}

	FUNC12(ctrl_info);

	FUNC11(ctrl_info);

	return 0;
}