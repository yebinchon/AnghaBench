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
typedef  scalar_t__ u32 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int BIT_DDMACH0_CHKSUM_STS ; 
 int BIT_DMEM_CHKSUM_OK ; 
 int BIT_DMEM_DW_OK ; 
 int BIT_IMEM_CHKSUM_OK ; 
 int BIT_IMEM_DW_OK ; 
 scalar_t__ OCPBASE_DMEM_88XX ; 
 int /*<<< orphan*/  REG_DDMA_CH0CTRL ; 
 int /*<<< orphan*/  REG_MCUFW_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,char*) ; 
 int FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC4(struct rtw_dev *rtwdev, u32 addr)
{
	u8 fw_ctrl;

	fw_ctrl = FUNC2(rtwdev, REG_MCUFW_CTRL);

	if (FUNC1(rtwdev, REG_DDMA_CH0CTRL) & BIT_DDMACH0_CHKSUM_STS) {
		if (addr < OCPBASE_DMEM_88XX) {
			fw_ctrl |= BIT_IMEM_DW_OK;
			fw_ctrl &= ~BIT_IMEM_CHKSUM_OK;
			FUNC3(rtwdev, REG_MCUFW_CTRL, fw_ctrl);
		} else {
			fw_ctrl |= BIT_DMEM_DW_OK;
			fw_ctrl &= ~BIT_DMEM_CHKSUM_OK;
			FUNC3(rtwdev, REG_MCUFW_CTRL, fw_ctrl);
		}

		FUNC0(rtwdev, "invalid fw checksum\n");

		return false;
	}

	if (addr < OCPBASE_DMEM_88XX) {
		fw_ctrl |= (BIT_IMEM_DW_OK | BIT_IMEM_CHKSUM_OK);
		FUNC3(rtwdev, REG_MCUFW_CTRL, fw_ctrl);
	} else {
		fw_ctrl |= (BIT_DMEM_DW_OK | BIT_DMEM_CHKSUM_OK);
		FUNC3(rtwdev, REG_MCUFW_CTRL, fw_ctrl);
	}

	return true;
}