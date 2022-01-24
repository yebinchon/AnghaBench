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
struct wl_pwr_cfg {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int FUNC1 (struct wl_pwr_cfg) ; 
 int FUNC2 (struct wl_pwr_cfg) ; 
 int FUNC3 (struct wl_pwr_cfg) ; 
 int FUNC4 (struct wl_pwr_cfg) ; 
 int FUNC5 (struct wl_pwr_cfg) ; 
 int PWRSEQ_DELAY_US ; 
#define  PWR_CMD_DELAY 132 
#define  PWR_CMD_END 131 
#define  PWR_CMD_POLLING 130 
#define  PWR_CMD_READ 129 
#define  PWR_CMD_WRITE 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_hal_init_c_ ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,size_t,int) ; 

u8 FUNC10(struct adapter *padapter, u8 cut_vers,
			    struct wl_pwr_cfg pwrseqcmd[])
{
	struct wl_pwr_cfg pwrcfgcmd;
	u8 poll_bit = false;
	u32 aryidx = 0;
	u8 value = 0;
	u32 offset = 0;
	u32 poll_count = 0; /*  polling autoload done. */
	u32 max_poll_count = 5000;

	do {
		pwrcfgcmd = pwrseqcmd[aryidx];

		FUNC6(_module_hal_init_c_, _drv_info_,
			 ("rtl88eu_pwrseqcmdparsing: offset(%#x) cut_msk(%#x)"
			  " cmd(%#x)"
			  "msk(%#x) value(%#x)\n",
			 FUNC4(pwrcfgcmd),
			 FUNC2(pwrcfgcmd),
			 FUNC1(pwrcfgcmd),
			 FUNC3(pwrcfgcmd),
			 FUNC5(pwrcfgcmd)));

		/* Only Handle the command whose CUT is matched */
		if (FUNC2(pwrcfgcmd) & cut_vers) {
			switch (FUNC1(pwrcfgcmd)) {
			case PWR_CMD_READ:
				FUNC6(_module_hal_init_c_, _drv_info_,
					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_READ\n"));
				break;
			case PWR_CMD_WRITE:
				FUNC6(_module_hal_init_c_, _drv_info_,
					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_WRITE\n"));
				offset = FUNC4(pwrcfgcmd);

				/*  Read the value from system register */
				value = FUNC8(padapter, offset);

				value &= ~(FUNC3(pwrcfgcmd));
				value |= (FUNC5(pwrcfgcmd) &
					  FUNC3(pwrcfgcmd));

				/*  Write the value back to system register */
				FUNC9(padapter, offset, value);
				break;
			case PWR_CMD_POLLING:
				FUNC6(_module_hal_init_c_, _drv_info_,
					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_POLLING\n"));

				poll_bit = false;
				offset = FUNC4(pwrcfgcmd);
				do {
					value = FUNC8(padapter, offset);
					value &= FUNC3(pwrcfgcmd);

					if (value == (FUNC5(pwrcfgcmd) &
						      FUNC3(pwrcfgcmd)))
						poll_bit = true;
					else
						FUNC7(10);

					if (poll_count++ > max_poll_count) {
						FUNC0("Fail to polling Offset[%#x]\n", offset);
						return false;
					}
				} while (!poll_bit);
				break;
			case PWR_CMD_DELAY:
				FUNC6(_module_hal_init_c_, _drv_info_,
					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_DELAY\n"));
				if (FUNC5(pwrcfgcmd) == PWRSEQ_DELAY_US)
					FUNC7(FUNC4(pwrcfgcmd));
				else
					FUNC7(FUNC4(pwrcfgcmd)*1000);
				break;
			case PWR_CMD_END:
				/* When this command is parsed, end the process */
				FUNC6(_module_hal_init_c_, _drv_info_,
					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_END\n"));
				return true;
			default:
				FUNC6(_module_hal_init_c_, _drv_err_,
					 ("rtl88eu_pwrseqcmdparsing: Unknown CMD!!\n"));
				break;
			}
		}

		aryidx++;/* Add Array Index */
	} while (1);
	return true;
}