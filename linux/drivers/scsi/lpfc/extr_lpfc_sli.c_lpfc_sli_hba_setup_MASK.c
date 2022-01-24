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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  sli_flag; } ;
struct lpfc_hba {int cfg_sli_mode; int cfg_aer_support; int hba_flag; int sli_rev; int sli3_options; int max_vpi; int* vpi_ids; int /*<<< orphan*/  link_state; int /*<<< orphan*/  hbalock; TYPE_1__ sli; int /*<<< orphan*/ * vpi_bmask; int /*<<< orphan*/  iocb_rsp_size; int /*<<< orphan*/  iocb_cmd_size; int /*<<< orphan*/  pcidev; scalar_t__ fcp_embed_io; int /*<<< orphan*/  cfg_enable_npiv; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HBA_AER_ENABLED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int LOG_INIT ; 
 int LOG_VPORT ; 
 int /*<<< orphan*/  LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_PROCESS_LA ; 
 int LPFC_SLI3_HBQ_ENABLED ; 
 int LPFC_SLI_REV3 ; 
 int /*<<< orphan*/  SLI2_IOCB_CMD_SIZE ; 
 int /*<<< orphan*/  SLI2_IOCB_RSP_SIZE ; 
 int /*<<< orphan*/  SLI3_IOCB_CMD_SIZE ; 
 int /*<<< orphan*/  SLI3_IOCB_RSP_SIZE ; 
 void* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC4 (struct lpfc_hba*,int) ; 
 int FUNC5 (struct lpfc_hba*) ; 
 int FUNC6 (struct lpfc_hba*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(struct lpfc_hba *phba)
{
	uint32_t rc;
	int  mode = 3, i;
	int longs;

	switch (phba->cfg_sli_mode) {
	case 2:
		if (phba->cfg_enable_npiv) {
			FUNC3(phba, KERN_ERR, LOG_INIT | LOG_VPORT,
				"1824 NPIV enabled: Override sli_mode "
				"parameter (%d) to auto (0).\n",
				phba->cfg_sli_mode);
			break;
		}
		mode = 2;
		break;
	case 0:
	case 3:
		break;
	default:
		FUNC3(phba, KERN_ERR, LOG_INIT | LOG_VPORT,
				"1819 Unrecognized sli_mode parameter: %d.\n",
				phba->cfg_sli_mode);

		break;
	}
	phba->fcp_embed_io = 0;	/* SLI4 FC support only */

	rc = FUNC4(phba, mode);

	if (rc && phba->cfg_sli_mode == 3)
		FUNC3(phba, KERN_ERR, LOG_INIT | LOG_VPORT,
				"1820 Unable to select SLI-3.  "
				"Not supported by adapter.\n");
	if (rc && mode != 2)
		rc = FUNC4(phba, 2);
	else if (rc && mode == 2)
		rc = FUNC4(phba, 3);
	if (rc)
		goto lpfc_sli_hba_setup_error;

	/* Enable PCIe device Advanced Error Reporting (AER) if configured */
	if (phba->cfg_aer_support == 1 && !(phba->hba_flag & HBA_AER_ENABLED)) {
		rc = FUNC7(phba->pcidev);
		if (!rc) {
			FUNC3(phba, KERN_INFO, LOG_INIT,
					"2709 This device supports "
					"Advanced Error Reporting (AER)\n");
			FUNC8(&phba->hbalock);
			phba->hba_flag |= HBA_AER_ENABLED;
			FUNC9(&phba->hbalock);
		} else {
			FUNC3(phba, KERN_INFO, LOG_INIT,
					"2708 This device does not support "
					"Advanced Error Reporting (AER): %d\n",
					rc);
			phba->cfg_aer_support = 0;
		}
	}

	if (phba->sli_rev == 3) {
		phba->iocb_cmd_size = SLI3_IOCB_CMD_SIZE;
		phba->iocb_rsp_size = SLI3_IOCB_RSP_SIZE;
	} else {
		phba->iocb_cmd_size = SLI2_IOCB_CMD_SIZE;
		phba->iocb_rsp_size = SLI2_IOCB_RSP_SIZE;
		phba->sli3_options = 0;
	}

	FUNC3(phba, KERN_INFO, LOG_INIT,
			"0444 Firmware in SLI %x mode. Max_vpi %d\n",
			phba->sli_rev, phba->max_vpi);
	rc = FUNC6(phba);

	if (rc)
		goto lpfc_sli_hba_setup_error;

	/* Initialize VPIs. */
	if (phba->sli_rev == LPFC_SLI_REV3) {
		/*
		 * The VPI bitmask and physical ID array are allocated
		 * and initialized once only - at driver load.  A port
		 * reset doesn't need to reinitialize this memory.
		 */
		if ((phba->vpi_bmask == NULL) && (phba->vpi_ids == NULL)) {
			longs = (phba->max_vpi + BITS_PER_LONG) / BITS_PER_LONG;
			phba->vpi_bmask = FUNC0(longs,
						  sizeof(unsigned long),
						  GFP_KERNEL);
			if (!phba->vpi_bmask) {
				rc = -ENOMEM;
				goto lpfc_sli_hba_setup_error;
			}

			phba->vpi_ids = FUNC0(phba->max_vpi + 1,
						sizeof(uint16_t),
						GFP_KERNEL);
			if (!phba->vpi_ids) {
				FUNC1(phba->vpi_bmask);
				rc = -ENOMEM;
				goto lpfc_sli_hba_setup_error;
			}
			for (i = 0; i < phba->max_vpi; i++)
				phba->vpi_ids[i] = i;
		}
	}

	/* Init HBQs */
	if (phba->sli3_options & LPFC_SLI3_HBQ_ENABLED) {
		rc = FUNC5(phba);
		if (rc)
			goto lpfc_sli_hba_setup_error;
	}
	FUNC8(&phba->hbalock);
	phba->sli.sli_flag |= LPFC_PROCESS_LA;
	FUNC9(&phba->hbalock);

	rc = FUNC2(phba);
	if (rc)
		goto lpfc_sli_hba_setup_error;

	return rc;

lpfc_sli_hba_setup_error:
	phba->link_state = LPFC_HBA_ERROR;
	FUNC3(phba, KERN_ERR, LOG_INIT,
			"0445 Firmware initialization failed\n");
	return rc;
}