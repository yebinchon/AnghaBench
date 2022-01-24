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
typedef  int u32 ;
struct pm8001_hba_info {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
#define  OPC_OUB_DEK_MANAGEMENT_RESP 169 
#define  OPC_OUB_DEREG_DEV 168 
#define  OPC_OUB_DEVICE_HANDLE_REMOVAL 167 
#define  OPC_OUB_DEV_HANDLE_ARRIV 166 
#define  OPC_OUB_DEV_REGIST 165 
#define  OPC_OUB_ECHO 164 
#define  OPC_OUB_FLASH_OP_EXT 163 
#define  OPC_OUB_FW_FLASH_UPDATE 162 
#define  OPC_OUB_GENERAL_EVENT 161 
#define  OPC_OUB_GET_CONTROLLER_CONFIG 160 
#define  OPC_OUB_GET_DEVICE_STATE 159 
#define  OPC_OUB_GET_DEV_HANDLE 158 
#define  OPC_OUB_GET_NVMD_DATA 157 
#define  OPC_OUB_GET_PHY_PROFILE 156 
#define  OPC_OUB_GET_TIME_STAMP 155 
#define  OPC_OUB_GPIO_EVENT 154 
#define  OPC_OUB_GPIO_RESPONSE 153 
#define  OPC_OUB_HW_EVENT 152 
#define  OPC_OUB_KEK_MANAGEMENT_RESP 151 
#define  OPC_OUB_LOCAL_PHY_CNTRL 150 
#define  OPC_OUB_PHY_START_RESP 149 
#define  OPC_OUB_PHY_STOP_RESP 148 
#define  OPC_OUB_PORT_CONTROL 147 
#define  OPC_OUB_SAS_DIAG_EXECUTE 146 
#define  OPC_OUB_SAS_DIAG_MODE_START_END 145 
#define  OPC_OUB_SAS_HW_EVENT_ACK 144 
#define  OPC_OUB_SATA_ABORT_RSP 143 
#define  OPC_OUB_SATA_COMP 142 
#define  OPC_OUB_SATA_EVENT 141 
#define  OPC_OUB_SET_CONTROLLER_CONFIG 140 
#define  OPC_OUB_SET_DEVICE_STATE 139 
#define  OPC_OUB_SET_DEV_INFO 138 
#define  OPC_OUB_SET_NVMD_DATA 137 
#define  OPC_OUB_SET_PHY_PROFILE 136 
#define  OPC_OUB_SMP_ABORT_RSP 135 
#define  OPC_OUB_SMP_COMP 134 
#define  OPC_OUB_SSP_ABORT_RSP 133 
#define  OPC_OUB_SSP_COALESCED_COMP_RESP 132 
#define  OPC_OUB_SSP_COMP 131 
#define  OPC_OUB_SSP_EVENT 130 
#define  OPC_OUB_SSP_RECV_EVENT 129 
#define  OPC_OUB_THERM_HW_EVENT 128 
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
 int /*<<< orphan*/  FUNC16 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC17 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC18 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC19 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC20 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC21 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC22 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC23 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC24 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC25 (struct pm8001_hba_info*,void*) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 (struct pm8001_hba_info*,void*) ; 

__attribute__((used)) static void FUNC28(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	__le32 pHeader = *(__le32 *)piomb;
	u32 opc = (u32)((FUNC0(pHeader)) & 0xFFF);

	switch (opc) {
	case OPC_OUB_ECHO:
		FUNC0(pm8001_ha, FUNC26("OPC_OUB_ECHO\n"));
		break;
	case OPC_OUB_HW_EVENT:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_HW_EVENT\n"));
		FUNC5(pm8001_ha, piomb);
		break;
	case OPC_OUB_THERM_HW_EVENT:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_THERMAL_EVENT\n"));
		FUNC16(pm8001_ha, piomb);
		break;
	case OPC_OUB_SSP_COMP:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SSP_COMP\n"));
		FUNC14(pm8001_ha, piomb);
		break;
	case OPC_OUB_SMP_COMP:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SMP_COMP\n"));
		FUNC13(pm8001_ha, piomb);
		break;
	case OPC_OUB_LOCAL_PHY_CNTRL:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_LOCAL_PHY_CNTRL\n"));
		FUNC21(pm8001_ha, piomb);
		break;
	case OPC_OUB_DEV_REGIST:
		FUNC0(pm8001_ha,
		FUNC26("OPC_OUB_DEV_REGIST\n"));
		FUNC22(pm8001_ha, piomb);
		break;
	case OPC_OUB_DEREG_DEV:
		FUNC0(pm8001_ha,
			FUNC26("unregister the device\n"));
		FUNC17(pm8001_ha, piomb);
		break;
	case OPC_OUB_GET_DEV_HANDLE:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_GET_DEV_HANDLE\n"));
		break;
	case OPC_OUB_SATA_COMP:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SATA_COMP\n"));
		FUNC9(pm8001_ha, piomb);
		break;
	case OPC_OUB_SATA_EVENT:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SATA_EVENT\n"));
		FUNC10(pm8001_ha, piomb);
		break;
	case OPC_OUB_SSP_EVENT:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SSP_EVENT\n"));
		FUNC15(pm8001_ha, piomb);
		break;
	case OPC_OUB_DEV_HANDLE_ARRIV:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_DEV_HANDLE_ARRIV\n"));
		/*This is for target*/
		break;
	case OPC_OUB_SSP_RECV_EVENT:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SSP_RECV_EVENT\n"));
		/*This is for target*/
		break;
	case OPC_OUB_FW_FLASH_UPDATE:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_FW_FLASH_UPDATE\n"));
		FUNC18(pm8001_ha, piomb);
		break;
	case OPC_OUB_GPIO_RESPONSE:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_GPIO_RESPONSE\n"));
		break;
	case OPC_OUB_GPIO_EVENT:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_GPIO_EVENT\n"));
		break;
	case OPC_OUB_GENERAL_EVENT:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_GENERAL_EVENT\n"));
		FUNC19(pm8001_ha, piomb);
		break;
	case OPC_OUB_SSP_ABORT_RSP:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SSP_ABORT_RSP\n"));
		FUNC25(pm8001_ha, piomb);
		break;
	case OPC_OUB_SATA_ABORT_RSP:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SATA_ABORT_RSP\n"));
		FUNC25(pm8001_ha, piomb);
		break;
	case OPC_OUB_SAS_DIAG_MODE_START_END:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SAS_DIAG_MODE_START_END\n"));
		break;
	case OPC_OUB_SAS_DIAG_EXECUTE:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SAS_DIAG_EXECUTE\n"));
		break;
	case OPC_OUB_GET_TIME_STAMP:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_GET_TIME_STAMP\n"));
		break;
	case OPC_OUB_SAS_HW_EVENT_ACK:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SAS_HW_EVENT_ACK\n"));
		break;
	case OPC_OUB_PORT_CONTROL:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_PORT_CONTROL\n"));
		break;
	case OPC_OUB_SMP_ABORT_RSP:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SMP_ABORT_RSP\n"));
		FUNC25(pm8001_ha, piomb);
		break;
	case OPC_OUB_GET_NVMD_DATA:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_GET_NVMD_DATA\n"));
		FUNC20(pm8001_ha, piomb);
		break;
	case OPC_OUB_SET_NVMD_DATA:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SET_NVMD_DATA\n"));
		FUNC24(pm8001_ha, piomb);
		break;
	case OPC_OUB_DEVICE_HANDLE_REMOVAL:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_DEVICE_HANDLE_REMOVAL\n"));
		break;
	case OPC_OUB_SET_DEVICE_STATE:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SET_DEVICE_STATE\n"));
		FUNC23(pm8001_ha, piomb);
		break;
	case OPC_OUB_GET_DEVICE_STATE:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_GET_DEVICE_STATE\n"));
		break;
	case OPC_OUB_SET_DEV_INFO:
		FUNC0(pm8001_ha,
			FUNC26("OPC_OUB_SET_DEV_INFO\n"));
		break;
	/* spcv specifc commands */
	case OPC_OUB_PHY_START_RESP:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_PHY_START_RESP opcode:%x\n", opc));
		FUNC7(pm8001_ha, piomb);
		break;
	case OPC_OUB_PHY_STOP_RESP:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_PHY_STOP_RESP opcode:%x\n", opc));
		FUNC8(pm8001_ha, piomb);
		break;
	case OPC_OUB_SET_CONTROLLER_CONFIG:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_SET_CONTROLLER_CONFIG opcode:%x\n", opc));
		FUNC11(pm8001_ha, piomb);
		break;
	case OPC_OUB_GET_CONTROLLER_CONFIG:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_GET_CONTROLLER_CONFIG opcode:%x\n", opc));
		FUNC3(pm8001_ha, piomb);
		break;
	case OPC_OUB_GET_PHY_PROFILE:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_GET_PHY_PROFILE opcode:%x\n", opc));
		FUNC4(pm8001_ha, piomb);
		break;
	case OPC_OUB_FLASH_OP_EXT:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_FLASH_OP_EXT opcode:%x\n", opc));
		FUNC2(pm8001_ha, piomb);
		break;
	case OPC_OUB_SET_PHY_PROFILE:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_SET_PHY_PROFILE opcode:%x\n", opc));
		FUNC12(pm8001_ha, piomb);
		break;
	case OPC_OUB_KEK_MANAGEMENT_RESP:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_KEK_MANAGEMENT_RESP opcode:%x\n", opc));
		FUNC6(pm8001_ha, piomb);
		break;
	case OPC_OUB_DEK_MANAGEMENT_RESP:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_DEK_MANAGEMENT_RESP opcode:%x\n", opc));
		FUNC1(pm8001_ha, piomb);
		break;
	case OPC_OUB_SSP_COALESCED_COMP_RESP:
		FUNC0(pm8001_ha, FUNC26(
			"OPC_OUB_SSP_COALESCED_COMP_RESP opcode:%x\n", opc));
		FUNC27(pm8001_ha, piomb);
		break;
	default:
		FUNC0(pm8001_ha, FUNC26(
			"Unknown outbound Queue IOMB OPC = 0x%x\n", opc));
		break;
	}
}