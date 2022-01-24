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
typedef  size_t u32 ;
struct pm8001_hba_info {int /*<<< orphan*/  nvmd_completion; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_ccb_info {int ccb_tag; int /*<<< orphan*/ * task; int /*<<< orphan*/  fw_control_context; } ;
struct fw_flash_Update_resp {int /*<<< orphan*/  status; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
#define  FLASH_UPDATE_COMPLETE_PENDING_REBOOT 136 
#define  FLASH_UPDATE_CRC_ERR 135 
#define  FLASH_UPDATE_DISABLED 134 
#define  FLASH_UPDATE_DNLD_NOT_SUPPORTED 133 
#define  FLASH_UPDATE_HDR_ERR 132 
#define  FLASH_UPDATE_HW_ERR 131 
#define  FLASH_UPDATE_IN_PROGRESS 130 
#define  FLASH_UPDATE_LENGTH_ERR 129 
#define  FLASH_UPDATE_OFFSET_ERR 128 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct pm8001_hba_info*,size_t) ; 

int FUNC6(struct pm8001_hba_info *pm8001_ha,
		void *piomb)
{
	u32 status;
	struct fw_flash_Update_resp *ppayload =
		(struct fw_flash_Update_resp *)(piomb + 4);
	u32 tag = FUNC3(ppayload->tag);
	struct pm8001_ccb_info *ccb = &pm8001_ha->ccb_info[tag];
	status = FUNC3(ppayload->status);
	switch (status) {
	case FLASH_UPDATE_COMPLETE_PENDING_REBOOT:
		FUNC0(pm8001_ha,
		FUNC4(": FLASH_UPDATE_COMPLETE_PENDING_REBOOT\n"));
		break;
	case FLASH_UPDATE_IN_PROGRESS:
		FUNC0(pm8001_ha,
			FUNC4(": FLASH_UPDATE_IN_PROGRESS\n"));
		break;
	case FLASH_UPDATE_HDR_ERR:
		FUNC0(pm8001_ha,
			FUNC4(": FLASH_UPDATE_HDR_ERR\n"));
		break;
	case FLASH_UPDATE_OFFSET_ERR:
		FUNC0(pm8001_ha,
			FUNC4(": FLASH_UPDATE_OFFSET_ERR\n"));
		break;
	case FLASH_UPDATE_CRC_ERR:
		FUNC0(pm8001_ha,
			FUNC4(": FLASH_UPDATE_CRC_ERR\n"));
		break;
	case FLASH_UPDATE_LENGTH_ERR:
		FUNC0(pm8001_ha,
			FUNC4(": FLASH_UPDATE_LENGTH_ERR\n"));
		break;
	case FLASH_UPDATE_HW_ERR:
		FUNC0(pm8001_ha,
			FUNC4(": FLASH_UPDATE_HW_ERR\n"));
		break;
	case FLASH_UPDATE_DNLD_NOT_SUPPORTED:
		FUNC0(pm8001_ha,
			FUNC4(": FLASH_UPDATE_DNLD_NOT_SUPPORTED\n"));
		break;
	case FLASH_UPDATE_DISABLED:
		FUNC0(pm8001_ha,
			FUNC4(": FLASH_UPDATE_DISABLED\n"));
		break;
	default:
		FUNC0(pm8001_ha,
			FUNC4("No matched status = %d\n", status));
		break;
	}
	FUNC2(ccb->fw_control_context);
	ccb->task = NULL;
	ccb->ccb_tag = 0xFFFFFFFF;
	FUNC5(pm8001_ha, tag);
	FUNC1(pm8001_ha->nvmd_completion);
	return 0;
}