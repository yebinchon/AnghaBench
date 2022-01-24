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
typedef  int u8 ;
struct pmcraid_instance {int ioa_reset_in_progress; int ioa_state; void* ioa_shutdown_type; int /*<<< orphan*/  reset_wait_q; scalar_t__ ioa_bringdown; struct pmcraid_cmd* reset_cmd; scalar_t__ ioa_reset_attempts; int /*<<< orphan*/  force_ioa_reset; int /*<<< orphan*/  ioa_unit_check; int /*<<< orphan*/  pdev; int /*<<< orphan*/  ioa_status; int /*<<< orphan*/  ioa_hard_reset; int /*<<< orphan*/  host; } ;
struct pmcraid_cmd {struct pmcraid_instance* drv_inst; } ;

/* Variables and functions */
 int INTRS_TRANSITION_TO_OPERATIONAL ; 
#define  IOA_STATE_DEAD 135 
#define  IOA_STATE_IN_BRINGDOWN 134 
#define  IOA_STATE_IN_BRINGUP 133 
#define  IOA_STATE_IN_HARD_RESET 132 
#define  IOA_STATE_IN_RESET_ALERT 131 
#define  IOA_STATE_IN_SOFT_RESET 130 
#define  IOA_STATE_OPERATIONAL 129 
#define  IOA_STATE_UNKNOWN 128 
 scalar_t__ PMCRAID_RESET_ATTEMPTS ; 
 int /*<<< orphan*/  PMC_DEVICE_EVENT_RESET_FAILED ; 
 int /*<<< orphan*/  PMC_DEVICE_EVENT_RESET_SUCCESS ; 
 int /*<<< orphan*/  PMC_DEVICE_EVENT_SHUTDOWN_FAILED ; 
 int /*<<< orphan*/  PMC_DEVICE_EVENT_SHUTDOWN_SUCCESS ; 
 void* SHUTDOWN_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcraid_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC6 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct pmcraid_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC10 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC13 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC14 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC15 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC16 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct pmcraid_cmd *cmd)
{
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	u8 reset_complete = 0;

	pinstance->ioa_reset_in_progress = 1;

	if (pinstance->reset_cmd != cmd) {
		FUNC3("reset is called with different command block\n");
		pinstance->reset_cmd = cmd;
	}

	FUNC7("reset_engine: state = %d, command = %p\n",
		      pinstance->ioa_state, cmd);

	switch (pinstance->ioa_state) {

	case IOA_STATE_DEAD:
		/* If IOA is offline, whatever may be the reset reason, just
		 * return. callers might be waiting on the reset wait_q, wake
		 * up them
		 */
		FUNC3("IOA is offline no reset is possible\n");
		reset_complete = 1;
		break;

	case IOA_STATE_IN_BRINGDOWN:
		/* we enter here, once ioa shutdown command is processed by IOA
		 * Alert IOA for a possible reset. If reset alert fails, IOA
		 * goes through hard-reset
		 */
		FUNC2(pinstance, ~0);
		pinstance->ioa_state = IOA_STATE_IN_RESET_ALERT;
		FUNC11(cmd);
		break;

	case IOA_STATE_UNKNOWN:
		/* We may be called during probe or resume. Some pre-processing
		 * is required for prior to reset
		 */
		FUNC17(pinstance->host);

		/* If asked to reset while IOA was processing responses or
		 * there are any error responses then IOA may require
		 * hard-reset.
		 */
		if (pinstance->ioa_hard_reset == 0) {
			if (FUNC0(pinstance->ioa_status) &
			    INTRS_TRANSITION_TO_OPERATIONAL) {
				FUNC7("sticky bit set, bring-up\n");
				pinstance->ioa_state = IOA_STATE_IN_BRINGUP;
				FUNC10(cmd);
				FUNC6(cmd);
			} else {
				pinstance->ioa_state = IOA_STATE_IN_SOFT_RESET;
				FUNC14(cmd);
			}
		} else {
			/* Alert IOA of a possible reset and wait for critical
			 * operation in progress bit to reset
			 */
			pinstance->ioa_state = IOA_STATE_IN_RESET_ALERT;
			FUNC11(cmd);
		}
		break;

	case IOA_STATE_IN_RESET_ALERT:
		/* If critical operation in progress bit is reset or wait gets
		 * timed out, reset proceeds with starting BIST on the IOA.
		 * pmcraid_ioa_hard_reset keeps a count of reset attempts. If
		 * they are 3 or more, reset engine marks IOA dead and returns
		 */
		pinstance->ioa_state = IOA_STATE_IN_HARD_RESET;
		FUNC15(cmd);
		break;

	case IOA_STATE_IN_HARD_RESET:
		pinstance->ioa_reset_attempts++;

		/* retry reset if we haven't reached maximum allowed limit */
		if (pinstance->ioa_reset_attempts > PMCRAID_RESET_ATTEMPTS) {
			pinstance->ioa_reset_attempts = 0;
			FUNC3("IOA didn't respond marking it as dead\n");
			pinstance->ioa_state = IOA_STATE_DEAD;

			if (pinstance->ioa_bringdown)
				FUNC8(pinstance,
					PMC_DEVICE_EVENT_SHUTDOWN_FAILED);
			else
				FUNC8(pinstance,
						PMC_DEVICE_EVENT_RESET_FAILED);
			reset_complete = 1;
			break;
		}

		/* Once either bist or pci reset is done, restore PCI config
		 * space. If this fails, proceed with hard reset again
		 */
		FUNC1(pinstance->pdev);

		/* fail all pending commands */
		FUNC4(pinstance);

		/* check if unit check is active, if so extract dump */
		if (pinstance->ioa_unit_check) {
			FUNC7("unit check is active\n");
			pinstance->ioa_unit_check = 0;
			FUNC5(pinstance);
			pinstance->ioa_reset_attempts--;
			pinstance->ioa_state = IOA_STATE_IN_RESET_ALERT;
			FUNC11(cmd);
			break;
		}

		/* if the reset reason is to bring-down the ioa, we might be
		 * done with the reset restore pci_config_space and complete
		 * the reset
		 */
		if (pinstance->ioa_bringdown) {
			FUNC7("bringing down the adapter\n");
			pinstance->ioa_shutdown_type = SHUTDOWN_NONE;
			pinstance->ioa_bringdown = 0;
			pinstance->ioa_state = IOA_STATE_UNKNOWN;
			FUNC8(pinstance,
					PMC_DEVICE_EVENT_SHUTDOWN_SUCCESS);
			reset_complete = 1;
		} else {
			/* bring-up IOA, so proceed with soft reset
			 * Reinitialize hrrq_buffers and their indices also
			 * enable interrupts after a pci_restore_state
			 */
			if (FUNC12(pinstance)) {
				pinstance->ioa_state = IOA_STATE_IN_BRINGUP;
				FUNC7("bringing up the adapter\n");
				FUNC10(cmd);
				FUNC6(cmd);
			} else {
				pinstance->ioa_state = IOA_STATE_IN_SOFT_RESET;
				FUNC14(cmd);
			}
		}
		break;

	case IOA_STATE_IN_SOFT_RESET:
		/* TRANSITION TO OPERATIONAL is on so start initialization
		 * sequence
		 */
		FUNC7("In softreset proceeding with bring-up\n");
		pinstance->ioa_state = IOA_STATE_IN_BRINGUP;

		/* Initialization commands start with HRRQ identification. From
		 * now on tasklet completes most of the commands as IOA is up
		 * and intrs are enabled
		 */
		FUNC6(cmd);
		break;

	case IOA_STATE_IN_BRINGUP:
		/* we are done with bringing up of IOA, change the ioa_state to
		 * operational and wake up any waiters
		 */
		pinstance->ioa_state = IOA_STATE_OPERATIONAL;
		reset_complete = 1;
		break;

	case IOA_STATE_OPERATIONAL:
	default:
		/* When IOA is operational and a reset is requested, check for
		 * the reset reason. If reset is to bring down IOA, unregister
		 * HCAMs and initiate shutdown; if adapter reset is forced then
		 * restart reset sequence again
		 */
		if (pinstance->ioa_shutdown_type == SHUTDOWN_NONE &&
		    pinstance->force_ioa_reset == 0) {
			FUNC8(pinstance,
						PMC_DEVICE_EVENT_RESET_SUCCESS);
			reset_complete = 1;
		} else {
			if (pinstance->ioa_shutdown_type != SHUTDOWN_NONE)
				pinstance->ioa_state = IOA_STATE_IN_BRINGDOWN;
			FUNC10(cmd);
			FUNC16(cmd);
		}
		break;
	}

	/* reset will be completed if ioa_state is either DEAD or UNKNOWN or
	 * OPERATIONAL. Reset all control variables used during reset, wake up
	 * any waiting threads and let the SCSI mid-layer send commands. Note
	 * that host_lock must be held before invoking scsi_report_bus_reset.
	 */
	if (reset_complete) {
		pinstance->ioa_reset_in_progress = 0;
		pinstance->ioa_reset_attempts = 0;
		pinstance->reset_cmd = NULL;
		pinstance->ioa_shutdown_type = SHUTDOWN_NONE;
		pinstance->ioa_bringdown = 0;
		FUNC13(cmd);

		/* If target state is to bring up the adapter, proceed with
		 * hcam registration and resource exposure to mid-layer.
		 */
		if (pinstance->ioa_state == IOA_STATE_OPERATIONAL)
			FUNC9(pinstance);

		FUNC18(&pinstance->reset_wait_q);
	}

	return;
}