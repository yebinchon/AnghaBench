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
struct pm8001_hba_info {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
#define  OPC_OUB_DEREG_DEV 160 
#define  OPC_OUB_DEVICE_HANDLE_REMOVAL 159 
#define  OPC_OUB_DEV_HANDLE_ARRIV 158 
#define  OPC_OUB_DEV_INFO 157 
#define  OPC_OUB_DEV_REGIST 156 
#define  OPC_OUB_ECHO 155 
#define  OPC_OUB_FW_FLASH_UPDATE 154 
#define  OPC_OUB_GENERAL_EVENT 153 
#define  OPC_OUB_GET_DEVICE_STATE 152 
#define  OPC_OUB_GET_DEV_HANDLE 151 
#define  OPC_OUB_GET_NVMD_DATA 150 
#define  OPC_OUB_GET_TIME_STAMP 149 
#define  OPC_OUB_GPIO_EVENT 148 
#define  OPC_OUB_GPIO_RESPONSE 147 
#define  OPC_OUB_HW_EVENT 146 
#define  OPC_OUB_LOCAL_PHY_CNTRL 145 
#define  OPC_OUB_PORT_CONTROL 144 
#define  OPC_OUB_SAS_DIAG_EXECUTE 143 
#define  OPC_OUB_SAS_DIAG_MODE_START_END 142 
#define  OPC_OUB_SAS_HW_EVENT_ACK 141 
#define  OPC_OUB_SAS_RE_INITIALIZE 140 
#define  OPC_OUB_SATA_ABORT_RSP 139 
#define  OPC_OUB_SATA_COMP 138 
#define  OPC_OUB_SATA_EVENT 137 
#define  OPC_OUB_SET_DEVICE_STATE 136 
#define  OPC_OUB_SET_DEV_INFO 135 
#define  OPC_OUB_SET_NVMD_DATA 134 
#define  OPC_OUB_SMP_ABORT_RSP 133 
#define  OPC_OUB_SMP_COMP 132 
#define  OPC_OUB_SSP_ABORT_RSP 131 
#define  OPC_OUB_SSP_COMP 130 
#define  OPC_OUB_SSP_EVENT 129 
#define  OPC_OUB_SSP_RECV_EVENT 128 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC14 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC15 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

__attribute__((used)) static void FUNC17(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	__le32 pHeader = *(__le32 *)piomb;
	u8 opc = (u8)((FUNC0(pHeader)) & 0xFFF);

	FUNC0(pm8001_ha, FUNC16("process_one_iomb:"));

	switch (opc) {
	case OPC_OUB_ECHO:
		FUNC0(pm8001_ha, FUNC16("OPC_OUB_ECHO\n"));
		break;
	case OPC_OUB_HW_EVENT:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_HW_EVENT\n"));
		FUNC1(pm8001_ha, piomb);
		break;
	case OPC_OUB_SSP_COMP:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SSP_COMP\n"));
		FUNC5(pm8001_ha, piomb);
		break;
	case OPC_OUB_SMP_COMP:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SMP_COMP\n"));
		FUNC4(pm8001_ha, piomb);
		break;
	case OPC_OUB_LOCAL_PHY_CNTRL:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_LOCAL_PHY_CNTRL\n"));
		FUNC11(pm8001_ha, piomb);
		break;
	case OPC_OUB_DEV_REGIST:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_DEV_REGIST\n"));
		FUNC12(pm8001_ha, piomb);
		break;
	case OPC_OUB_DEREG_DEV:
		FUNC0(pm8001_ha,
			FUNC16("unregister the device\n"));
		FUNC7(pm8001_ha, piomb);
		break;
	case OPC_OUB_GET_DEV_HANDLE:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_GET_DEV_HANDLE\n"));
		break;
	case OPC_OUB_SATA_COMP:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SATA_COMP\n"));
		FUNC2(pm8001_ha, piomb);
		break;
	case OPC_OUB_SATA_EVENT:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SATA_EVENT\n"));
		FUNC3(pm8001_ha, piomb);
		break;
	case OPC_OUB_SSP_EVENT:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SSP_EVENT\n"));
		FUNC6(pm8001_ha, piomb);
		break;
	case OPC_OUB_DEV_HANDLE_ARRIV:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_DEV_HANDLE_ARRIV\n"));
		/*This is for target*/
		break;
	case OPC_OUB_SSP_RECV_EVENT:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SSP_RECV_EVENT\n"));
		/*This is for target*/
		break;
	case OPC_OUB_DEV_INFO:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_DEV_INFO\n"));
		break;
	case OPC_OUB_FW_FLASH_UPDATE:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_FW_FLASH_UPDATE\n"));
		FUNC8(pm8001_ha, piomb);
		break;
	case OPC_OUB_GPIO_RESPONSE:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_GPIO_RESPONSE\n"));
		break;
	case OPC_OUB_GPIO_EVENT:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_GPIO_EVENT\n"));
		break;
	case OPC_OUB_GENERAL_EVENT:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_GENERAL_EVENT\n"));
		FUNC9(pm8001_ha, piomb);
		break;
	case OPC_OUB_SSP_ABORT_RSP:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SSP_ABORT_RSP\n"));
		FUNC15(pm8001_ha, piomb);
		break;
	case OPC_OUB_SATA_ABORT_RSP:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SATA_ABORT_RSP\n"));
		FUNC15(pm8001_ha, piomb);
		break;
	case OPC_OUB_SAS_DIAG_MODE_START_END:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SAS_DIAG_MODE_START_END\n"));
		break;
	case OPC_OUB_SAS_DIAG_EXECUTE:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SAS_DIAG_EXECUTE\n"));
		break;
	case OPC_OUB_GET_TIME_STAMP:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_GET_TIME_STAMP\n"));
		break;
	case OPC_OUB_SAS_HW_EVENT_ACK:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SAS_HW_EVENT_ACK\n"));
		break;
	case OPC_OUB_PORT_CONTROL:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_PORT_CONTROL\n"));
		break;
	case OPC_OUB_SMP_ABORT_RSP:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SMP_ABORT_RSP\n"));
		FUNC15(pm8001_ha, piomb);
		break;
	case OPC_OUB_GET_NVMD_DATA:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_GET_NVMD_DATA\n"));
		FUNC10(pm8001_ha, piomb);
		break;
	case OPC_OUB_SET_NVMD_DATA:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SET_NVMD_DATA\n"));
		FUNC14(pm8001_ha, piomb);
		break;
	case OPC_OUB_DEVICE_HANDLE_REMOVAL:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_DEVICE_HANDLE_REMOVAL\n"));
		break;
	case OPC_OUB_SET_DEVICE_STATE:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SET_DEVICE_STATE\n"));
		FUNC13(pm8001_ha, piomb);
		break;
	case OPC_OUB_GET_DEVICE_STATE:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_GET_DEVICE_STATE\n"));
		break;
	case OPC_OUB_SET_DEV_INFO:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SET_DEV_INFO\n"));
		break;
	case OPC_OUB_SAS_RE_INITIALIZE:
		FUNC0(pm8001_ha,
			FUNC16("OPC_OUB_SAS_RE_INITIALIZE\n"));
		break;
	default:
		FUNC0(pm8001_ha,
			FUNC16("Unknown outbound Queue IOMB OPC = %x\n",
			opc));
		break;
	}
}