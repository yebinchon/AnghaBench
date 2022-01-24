#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  temp_event_data ;
struct temp_event {int data; int /*<<< orphan*/  event_code; int /*<<< orphan*/  event_type; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_register {int word0; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  ERR2regaddr; int /*<<< orphan*/  ERR1regaddr; int /*<<< orphan*/  STATUSregaddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  UEMASKLOregaddr; int /*<<< orphan*/  UERRLOregaddr; } ;
struct TYPE_7__ {TYPE_2__ if_type2; TYPE_1__ if_type0; } ;
struct TYPE_8__ {int ue_to_sr; TYPE_3__ u; int /*<<< orphan*/  PSMPHRregaddr; struct lpfc_register sli_intf; } ;
struct lpfc_hba {int hba_flag; void* link_state; int /*<<< orphan*/  cfg_enable_hba_reset; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  over_temp_state; struct lpfc_vport* pport; int /*<<< orphan*/  sfp_alarm; TYPE_4__ sli4_hba; int /*<<< orphan*/  pcidev; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  portsmphr_reg ;
typedef  int /*<<< orphan*/  event_data ;

/* Variables and functions */
 int EIO ; 
 int FC_REG_DUMP_EVENT ; 
 int /*<<< orphan*/  FC_REG_TEMPERATURE_EVENT ; 
 int /*<<< orphan*/  HBA_OVER_TEMP ; 
 int HBA_RECOVERABLE_UE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_CRIT_TEMP ; 
 void* LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_MBX_NO_WAIT ; 
 int LPFC_PORT_SEM_MASK ; 
 int LPFC_PORT_SEM_UE_RECOVERABLE ; 
 int LPFC_POST_STAGE_PORT_READY ; 
#define  LPFC_SLI_INTF_IF_TYPE_0 131 
#define  LPFC_SLI_INTF_IF_TYPE_1 130 
#define  LPFC_SLI_INTF_IF_TYPE_2 129 
#define  LPFC_SLI_INTF_IF_TYPE_6 128 
 int /*<<< orphan*/  LPFC_TRANSGRESSION_HIGH_TEMPERATURE ; 
 int PCI_VENDOR_ID_EMULEX ; 
 int SCSI_NL_VID_TYPE_PCI ; 
 int SLIPORT_ERR1_REG_ERR_CODE_2 ; 
 int SLIPORT_ERR2_REG_FORCED_DUMP ; 
 int SLIPORT_ERR2_REG_FUNC_PROVISON ; 
 int SLIPORT_ERR2_REG_FW_RESTART ; 
 int FUNC0 (int /*<<< orphan*/ ,struct lpfc_register*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  lpfc_port_smphr_port_status ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
 struct Scsi_Host* FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int FUNC8 (struct lpfc_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int /*<<< orphan*/  lpfc_sliport_status_oti ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_register*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(struct lpfc_hba *phba)
{
	struct lpfc_vport *vport = phba->pport;
	uint32_t event_data;
	struct Scsi_Host *shost;
	uint32_t if_type;
	struct lpfc_register portstat_reg = {0};
	uint32_t reg_err1, reg_err2;
	uint32_t uerrlo_reg, uemasklo_reg;
	uint32_t smphr_port_status = 0, pci_rd_rc1, pci_rd_rc2;
	bool en_rn_msg = true;
	struct temp_event temp_event_data;
	struct lpfc_register portsmphr_reg;
	int rc, i;

	/* If the pci channel is offline, ignore possible errors, since
	 * we cannot communicate with the pci card anyway.
	 */
	if (FUNC11(phba->pcidev)) {
		FUNC4(phba, KERN_ERR, LOG_INIT,
				"3166 pci channel is offline\n");
		FUNC7(phba);
		return;
	}

	FUNC9(&portsmphr_reg, 0, sizeof(portsmphr_reg));
	if_type = FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);
	switch (if_type) {
	case LPFC_SLI_INTF_IF_TYPE_0:
		pci_rd_rc1 = FUNC5(
				phba->sli4_hba.u.if_type0.UERRLOregaddr,
				&uerrlo_reg);
		pci_rd_rc2 = FUNC5(
				phba->sli4_hba.u.if_type0.UEMASKLOregaddr,
				&uemasklo_reg);
		/* consider PCI bus read error as pci_channel_offline */
		if (pci_rd_rc1 == -EIO && pci_rd_rc2 == -EIO)
			return;
		if (!(phba->hba_flag & HBA_RECOVERABLE_UE)) {
			FUNC7(phba);
			return;
		}
		FUNC4(phba, KERN_ERR, LOG_INIT,
				"7623 Checking UE recoverable");

		for (i = 0; i < phba->sli4_hba.ue_to_sr / 1000; i++) {
			if (FUNC5(phba->sli4_hba.PSMPHRregaddr,
				       &portsmphr_reg.word0))
				continue;

			smphr_port_status = FUNC0(lpfc_port_smphr_port_status,
						   &portsmphr_reg);
			if ((smphr_port_status & LPFC_PORT_SEM_MASK) ==
			    LPFC_PORT_SEM_UE_RECOVERABLE)
				break;
			/*Sleep for 1Sec, before checking SEMAPHORE */
			FUNC10(1000);
		}

		FUNC4(phba, KERN_ERR, LOG_INIT,
				"4827 smphr_port_status x%x : Waited %dSec",
				smphr_port_status, i);

		/* Recoverable UE, reset the HBA device */
		if ((smphr_port_status & LPFC_PORT_SEM_MASK) ==
		    LPFC_PORT_SEM_UE_RECOVERABLE) {
			for (i = 0; i < 20; i++) {
				FUNC10(1000);
				if (!FUNC5(phba->sli4_hba.PSMPHRregaddr,
				    &portsmphr_reg.word0) &&
				    (LPFC_POST_STAGE_PORT_READY ==
				     FUNC0(lpfc_port_smphr_port_status,
				     &portsmphr_reg))) {
					rc = FUNC8(phba,
						LPFC_MBX_NO_WAIT, en_rn_msg);
					if (rc == 0)
						return;
					FUNC4(phba,
						KERN_ERR, LOG_INIT,
						"4215 Failed to recover UE");
					break;
				}
			}
		}
		FUNC4(phba, KERN_ERR, LOG_INIT,
				"7624 Firmware not ready: Failing UE recovery,"
				" waited %dSec", i);
		phba->link_state = LPFC_HBA_ERROR;
		break;

	case LPFC_SLI_INTF_IF_TYPE_2:
	case LPFC_SLI_INTF_IF_TYPE_6:
		pci_rd_rc1 = FUNC5(
				phba->sli4_hba.u.if_type2.STATUSregaddr,
				&portstat_reg.word0);
		/* consider PCI bus read error as pci_channel_offline */
		if (pci_rd_rc1 == -EIO) {
			FUNC4(phba, KERN_ERR, LOG_INIT,
				"3151 PCI bus read access failure: x%x\n",
				FUNC12(phba->sli4_hba.u.if_type2.STATUSregaddr));
			FUNC7(phba);
			return;
		}
		reg_err1 = FUNC12(phba->sli4_hba.u.if_type2.ERR1regaddr);
		reg_err2 = FUNC12(phba->sli4_hba.u.if_type2.ERR2regaddr);
		if (FUNC0(lpfc_sliport_status_oti, &portstat_reg)) {
			FUNC4(phba, KERN_ERR, LOG_INIT,
				"2889 Port Overtemperature event, "
				"taking port offline Data: x%x x%x\n",
				reg_err1, reg_err2);

			phba->sfp_alarm |= LPFC_TRANSGRESSION_HIGH_TEMPERATURE;
			temp_event_data.event_type = FC_REG_TEMPERATURE_EVENT;
			temp_event_data.event_code = LPFC_CRIT_TEMP;
			temp_event_data.data = 0xFFFFFFFF;

			shost = FUNC6(phba->pport);
			FUNC2(shost, FUNC1(),
						  sizeof(temp_event_data),
						  (char *)&temp_event_data,
						  SCSI_NL_VID_TYPE_PCI
						  | PCI_VENDOR_ID_EMULEX);

			FUNC13(&phba->hbalock);
			phba->over_temp_state = HBA_OVER_TEMP;
			FUNC14(&phba->hbalock);
			FUNC7(phba);
			return;
		}
		if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
		    reg_err2 == SLIPORT_ERR2_REG_FW_RESTART) {
			FUNC4(phba, KERN_ERR, LOG_INIT,
					"3143 Port Down: Firmware Update "
					"Detected\n");
			en_rn_msg = false;
		} else if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
			 reg_err2 == SLIPORT_ERR2_REG_FORCED_DUMP)
			FUNC4(phba, KERN_ERR, LOG_INIT,
					"3144 Port Down: Debug Dump\n");
		else if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
			 reg_err2 == SLIPORT_ERR2_REG_FUNC_PROVISON)
			FUNC4(phba, KERN_ERR, LOG_INIT,
					"3145 Port Down: Provisioning\n");

		/* If resets are disabled then leave the HBA alone and return */
		if (!phba->cfg_enable_hba_reset)
			return;

		/* Check port status register for function reset */
		rc = FUNC8(phba, LPFC_MBX_NO_WAIT,
				en_rn_msg);
		if (rc == 0) {
			/* don't report event on forced debug dump */
			if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
			    reg_err2 == SLIPORT_ERR2_REG_FORCED_DUMP)
				return;
			else
				break;
		}
		/* fall through for not able to recover */
		FUNC4(phba, KERN_ERR, LOG_INIT,
				"3152 Unrecoverable error\n");
		phba->link_state = LPFC_HBA_ERROR;
		break;
	case LPFC_SLI_INTF_IF_TYPE_1:
	default:
		break;
	}
	FUNC4(phba, KERN_WARNING, LOG_INIT,
			"3123 Report dump event to upper layer\n");
	/* Send an internal error event to mgmt application */
	FUNC3(phba);

	event_data = FC_REG_DUMP_EVENT;
	shost = FUNC6(vport);
	FUNC2(shost, FUNC1(),
				  sizeof(event_data), (char *) &event_data,
				  SCSI_NL_VID_TYPE_PCI | PCI_VENDOR_ID_EMULEX);
}