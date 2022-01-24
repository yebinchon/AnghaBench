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
typedef  size_t u32 ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  WLAN_PWR_CFG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int PWRSEQ_DELAY_US ; 
 int /*<<< orphan*/  PWR_BASEADDR_SDIO ; 
#define  PWR_CMD_DELAY 132 
#define  PWR_CMD_END 131 
#define  PWR_CMD_POLLING 130 
#define  PWR_CMD_READ 129 
#define  PWR_CMD_WRITE 128 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (struct adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,size_t,int) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_hal_init_c_ ; 
 int FUNC12 (struct adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,size_t,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

u8 FUNC15(
	struct adapter *padapter,
	u8 CutVersion,
	u8 FabVersion,
	u8 InterfaceType,
	WLAN_PWR_CFG PwrSeqCmd[]
)
{
	WLAN_PWR_CFG PwrCfgCmd;
	u8 bPollingBit = false;
	u32 AryIdx = 0;
	u8 value = 0;
	u32 offset = 0;
	u32 pollingCount = 0; /*  polling autoload done. */
	u32 maxPollingCnt = 5000;

	do {
		PwrCfgCmd = PwrSeqCmd[AryIdx];

		FUNC9(
			_module_hal_init_c_,
			_drv_info_,
			(
				"HalPwrSeqCmdParsing: offset(%#x) cut_msk(%#x) fab_msk(%#x) interface_msk(%#x) base(%#x) cmd(%#x) msk(%#x) value(%#x)\n",
				FUNC7(PwrCfgCmd),
				FUNC3(PwrCfgCmd),
				FUNC4(PwrCfgCmd),
				FUNC5(PwrCfgCmd),
				FUNC1(PwrCfgCmd),
				FUNC2(PwrCfgCmd),
				FUNC6(PwrCfgCmd),
				FUNC8(PwrCfgCmd)
			)
		);

		/* 2 Only Handle the command whose FAB, CUT, and Interface are matched */
		if (
			(FUNC4(PwrCfgCmd) & FabVersion) &&
			(FUNC3(PwrCfgCmd) & CutVersion) &&
			(FUNC5(PwrCfgCmd) & InterfaceType)
		) {
			switch (FUNC2(PwrCfgCmd)) {
			case PWR_CMD_READ:
				FUNC9(
					_module_hal_init_c_,
					_drv_info_,
					("HalPwrSeqCmdParsing: PWR_CMD_READ\n")
				);
				break;

			case PWR_CMD_WRITE:
				FUNC9(
					_module_hal_init_c_,
					_drv_info_,
					("HalPwrSeqCmdParsing: PWR_CMD_WRITE\n")
				);
				offset = FUNC7(PwrCfgCmd);

				/*  */
				/*  <Roger_Notes> We should deal with interface specific address mapping for some interfaces, e.g., SDIO interface */
				/*  2011.07.07. */
				/*  */
				if (FUNC1(PwrCfgCmd) == PWR_BASEADDR_SDIO) {
					/*  Read Back SDIO Local value */
					value = FUNC10(padapter, offset);

					value &= ~(FUNC6(PwrCfgCmd));
					value |= (
						FUNC8(PwrCfgCmd) &
						FUNC6(PwrCfgCmd)
					);

					/*  Write Back SDIO Local value */
					FUNC11(padapter, offset, value);
				} else {
					/*  Read the value from system register */
					value = FUNC12(padapter, offset);

					value &= (~(FUNC6(PwrCfgCmd)));
					value |= (
						FUNC8(PwrCfgCmd)
						&FUNC6(PwrCfgCmd)
					);

					/*  Write the value back to sytem register */
					FUNC13(padapter, offset, value);
				}
				break;

			case PWR_CMD_POLLING:
				FUNC9(
					_module_hal_init_c_,
					_drv_info_,
					("HalPwrSeqCmdParsing: PWR_CMD_POLLING\n")
				);

				bPollingBit = false;
				offset = FUNC7(PwrCfgCmd);
				do {
					if (FUNC1(PwrCfgCmd) == PWR_BASEADDR_SDIO)
						value = FUNC10(padapter, offset);
					else
						value = FUNC12(padapter, offset);

					value = value&FUNC6(PwrCfgCmd);
					if (
						value == (FUNC8(PwrCfgCmd) &
						FUNC6(PwrCfgCmd))
					)
						bPollingBit = true;
					else
						FUNC14(10);

					if (pollingCount++ > maxPollingCnt) {
						FUNC0(
							"Fail to polling Offset[%#x]=%02x\n",
							offset,
							value
						);
						return false;
					}
				} while (!bPollingBit);

				break;

			case PWR_CMD_DELAY:
				FUNC9(
					_module_hal_init_c_,
					_drv_info_,
					("HalPwrSeqCmdParsing: PWR_CMD_DELAY\n")
				);
				if (FUNC8(PwrCfgCmd) == PWRSEQ_DELAY_US)
					FUNC14(FUNC7(PwrCfgCmd));
				else
					FUNC14(FUNC7(PwrCfgCmd)*1000);
				break;

			case PWR_CMD_END:
				/*  When this command is parsed, end the process */
				FUNC9(
					_module_hal_init_c_,
					_drv_info_,
					("HalPwrSeqCmdParsing: PWR_CMD_END\n")
				);
				return true;

			default:
				FUNC9(
					_module_hal_init_c_,
					_drv_err_,
					("HalPwrSeqCmdParsing: Unknown CMD!!\n")
				);
				break;
			}
		}

		AryIdx++;/* Add Array Index */
	} while (1);

	return true;
}