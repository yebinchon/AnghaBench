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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ PPBUF_BASE2 ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 scalar_t__ REG_SD_CMD0 ; 
 scalar_t__ REG_SD_CMD4 ; 
 scalar_t__ REG_SD_CMD5 ; 
 int /*<<< orphan*/  SD_CARD ; 
 scalar_t__ SD_RSP_TYPE_R0 ; 
 scalar_t__ SD_RSP_TYPE_R2 ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct rtsx_chip *chip, int len, u8 *rsp, u8 rsp_type)
{
	int retval, rsp_len;
	u16 reg_addr;

	if (rsp_type == SD_RSP_TYPE_R0)
		return STATUS_SUCCESS;

	FUNC5(chip);

	if (rsp_type == SD_RSP_TYPE_R2) {
		for (reg_addr = PPBUF_BASE2; reg_addr < PPBUF_BASE2 + 16;
		     reg_addr++)
			FUNC2(chip, READ_REG_CMD, reg_addr, 0xFF, 0);

		rsp_len = 17;
	} else if (rsp_type != SD_RSP_TYPE_R0) {
		for (reg_addr = REG_SD_CMD0; reg_addr <= REG_SD_CMD4;
		     reg_addr++)
			FUNC2(chip, READ_REG_CMD, reg_addr, 0xFF, 0);

		rsp_len = 6;
	}
	FUNC2(chip, READ_REG_CMD, REG_SD_CMD5, 0xFF, 0);

	retval = FUNC6(chip, SD_CARD, 100);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (rsp) {
		int min_len = (rsp_len < len) ? rsp_len : len;

		FUNC1(rsp, FUNC4(chip), min_len);

		FUNC0(FUNC3(chip), "min_len = %d\n", min_len);
		FUNC0(FUNC3(chip), "Response in cmd buf: 0x%x 0x%x 0x%x 0x%x\n",
			rsp[0], rsp[1], rsp[2], rsp[3]);
	}

	return STATUS_SUCCESS;
}