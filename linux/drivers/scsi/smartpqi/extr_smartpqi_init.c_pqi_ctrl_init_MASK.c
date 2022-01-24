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
struct pqi_ctrl_info {scalar_t__ max_outstanding_requests; int pqi_mode_enabled; scalar_t__ num_msix_vectors_enabled; scalar_t__ num_queue_groups; scalar_t__ max_msix_vectors; int controller_online; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_MODE_MSIX ; 
 scalar_t__ PQI_MAX_OUTSTANDING_REQUESTS ; 
 scalar_t__ PQI_MAX_OUTSTANDING_REQUESTS_KDUMP ; 
 int /*<<< orphan*/  PQI_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct pqi_ctrl_info*) ; 
 int FUNC2 (struct pqi_ctrl_info*) ; 
 int FUNC3 (struct pqi_ctrl_info*) ; 
 int FUNC4 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct pqi_ctrl_info*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pqi_ctrl_info*) ; 
 int FUNC9 (struct pqi_ctrl_info*) ; 
 int FUNC10 (struct pqi_ctrl_info*) ; 
 int FUNC11 (struct pqi_ctrl_info*) ; 
 int FUNC12 (struct pqi_ctrl_info*) ; 
 int FUNC13 (struct pqi_ctrl_info*) ; 
 int FUNC14 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct pqi_ctrl_info*) ; 
 int FUNC16 (struct pqi_ctrl_info*) ; 
 int FUNC17 (struct pqi_ctrl_info*) ; 
 int FUNC18 (struct pqi_ctrl_info*) ; 
 int FUNC19 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC20 (struct pqi_ctrl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC22 (struct pqi_ctrl_info*) ; 
 int FUNC23 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC24 (struct pqi_ctrl_info*) ; 
 int FUNC25 (struct pqi_ctrl_info*) ; 
 int FUNC26 (struct pqi_ctrl_info*) ; 
 int FUNC27 (struct pqi_ctrl_info*) ; 
 scalar_t__ reset_devices ; 
 int FUNC28 (struct pqi_ctrl_info*) ; 
 int FUNC29 (struct pqi_ctrl_info*) ; 
 int FUNC30 (struct pqi_ctrl_info*) ; 
 int FUNC31 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static int FUNC32(struct pqi_ctrl_info *ctrl_info)
{
	int rc;

	rc = FUNC12(ctrl_info);
	if (rc)
		return rc;

	/*
	 * Wait until the controller is ready to start accepting SIS
	 * commands.
	 */
	rc = FUNC31(ctrl_info);
	if (rc)
		return rc;

	/*
	 * Get the controller properties.  This allows us to determine
	 * whether or not it supports PQI mode.
	 */
	rc = FUNC28(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error obtaining controller properties\n");
		return rc;
	}

	rc = FUNC29(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error obtaining controller capabilities\n");
		return rc;
	}

	if (reset_devices) {
		if (ctrl_info->max_outstanding_requests >
			PQI_MAX_OUTSTANDING_REQUESTS_KDUMP)
			ctrl_info->max_outstanding_requests =
					PQI_MAX_OUTSTANDING_REQUESTS_KDUMP;
	} else {
		if (ctrl_info->max_outstanding_requests >
			PQI_MAX_OUTSTANDING_REQUESTS)
			ctrl_info->max_outstanding_requests =
					PQI_MAX_OUTSTANDING_REQUESTS;
	}

	FUNC5(ctrl_info);

	rc = FUNC2(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"failed to allocate PQI error buffer\n");
		return rc;
	}

	/*
	 * If the function we are about to call succeeds, the
	 * controller will transition from legacy SIS mode
	 * into PQI mode.
	 */
	rc = FUNC30(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error initializing PQI mode\n");
		return rc;
	}

	/* Wait for the controller to complete the SIS -> PQI transition. */
	rc = FUNC26(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"transition to PQI mode failed\n");
		return rc;
	}

	/* From here on, we are running in PQI mode. */
	ctrl_info->pqi_mode_enabled = true;
	FUNC20(ctrl_info, PQI_MODE);

	rc = FUNC1(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"failed to allocate admin queues\n");
		return rc;
	}

	rc = FUNC8(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error creating admin queues\n");
		return rc;
	}

	rc = FUNC18(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"obtaining device capability failed\n");
		return rc;
	}

	rc = FUNC25(ctrl_info);
	if (rc)
		return rc;

	FUNC6(ctrl_info);

	rc = FUNC11(ctrl_info);
	if (rc)
		return rc;

	if (ctrl_info->num_msix_vectors_enabled < ctrl_info->num_queue_groups) {
		ctrl_info->max_msix_vectors =
			ctrl_info->num_msix_vectors_enabled;
		FUNC6(ctrl_info);
	}

	rc = FUNC3(ctrl_info);
	if (rc)
		return rc;

	rc = FUNC4(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"failed to allocate operational queues\n");
		return rc;
	}

	FUNC15(ctrl_info);

	rc = FUNC19(ctrl_info);
	if (rc)
		return rc;

	rc = FUNC9(ctrl_info);
	if (rc)
		return rc;

	FUNC7(ctrl_info, IRQ_MODE_MSIX);

	ctrl_info->controller_online = true;

	rc = FUNC16(ctrl_info);
	if (rc)
		return rc;

	FUNC24(ctrl_info);

	rc = FUNC10(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error enabling events\n");
		return rc;
	}

	/* Register with the SCSI subsystem. */
	rc = FUNC17(ctrl_info);
	if (rc)
		return rc;

	rc = FUNC13(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error obtaining product details\n");
		return rc;
	}

	rc = FUNC14(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error obtaining ctrl serial number\n");
		return rc;
	}

	rc = FUNC23(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error enabling multi-lun rescan\n");
		return rc;
	}

	rc = FUNC27(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error updating host wellness\n");
		return rc;
	}

	FUNC22(ctrl_info);

	FUNC21(ctrl_info);

	return 0;
}