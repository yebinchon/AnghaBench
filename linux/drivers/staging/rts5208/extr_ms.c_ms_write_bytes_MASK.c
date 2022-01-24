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
struct ms_info {int dummy; } ;
struct rtsx_chip {struct ms_info ms_card; } ;

/* Variables and functions */
 scalar_t__ CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 scalar_t__ FUNC0 (struct ms_info*) ; 
 scalar_t__ MS_BYTE_CNT ; 
 int /*<<< orphan*/  MS_CARD ; 
 int /*<<< orphan*/  MS_CMD_NK ; 
 int MS_CRC16_ERR ; 
 int /*<<< orphan*/  MS_CRC16_ERROR ; 
 int MS_INT_CMDNK ; 
 int MS_INT_ERR ; 
 int MS_RDY_TIMEOUT ; 
 int MS_TM_WRITE_BYTES ; 
 int /*<<< orphan*/  MS_TO_ERROR ; 
 scalar_t__ MS_TPC ; 
 scalar_t__ MS_TRANSFER ; 
 int MS_TRANSFER_END ; 
 int MS_TRANSFER_START ; 
 scalar_t__ MS_TRANS_CFG ; 
 int PINGPONG_BUFFER ; 
 scalar_t__ PPBUF_BASE2 ; 
 int STATUS_ERROR ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,scalar_t__,int*) ; 
 int FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct rtsx_chip *chip,
			  u8 tpc, u8 cnt, u8 cfg, u8 *data, int data_len)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval, i;

	if (!data || (data_len < cnt))
		return STATUS_ERROR;

	FUNC7(chip);

	for (i = 0; i < cnt; i++) {
		FUNC4(chip, WRITE_REG_CMD,
			     PPBUF_BASE2 + i, 0xFF, data[i]);
	}
	if (cnt % 2)
		FUNC4(chip, WRITE_REG_CMD, PPBUF_BASE2 + i, 0xFF, 0xFF);

	FUNC4(chip, WRITE_REG_CMD, MS_TPC, 0xFF, tpc);
	FUNC4(chip, WRITE_REG_CMD, MS_BYTE_CNT, 0xFF, cnt);
	FUNC4(chip, WRITE_REG_CMD, MS_TRANS_CFG, 0xFF, cfg);
	FUNC4(chip, WRITE_REG_CMD, CARD_DATA_SOURCE,
		     0x01, PINGPONG_BUFFER);

	FUNC4(chip, WRITE_REG_CMD,
		     MS_TRANSFER, 0xFF, MS_TRANSFER_START | MS_TM_WRITE_BYTES);
	FUNC4(chip, CHECK_REG_CMD,
		     MS_TRANSFER, MS_TRANSFER_END, MS_TRANSFER_END);

	retval = FUNC9(chip, MS_CARD, 5000);
	if (retval < 0) {
		u8 val = 0;

		FUNC8(chip, MS_TRANS_CFG, &val);
		FUNC1(FUNC6(chip), "MS_TRANS_CFG: 0x%02x\n", val);

		FUNC5(chip);

		if (!(tpc & 0x08)) {
			if (val & MS_CRC16_ERR) {
				FUNC3(chip, MS_CRC16_ERROR);
				return FUNC2(chip);
			}
		} else {
			if (FUNC0(ms_card) && !(val & 0x80)) {
				if (val & (MS_INT_ERR | MS_INT_CMDNK)) {
					FUNC3(chip, MS_CMD_NK);
					return FUNC2(chip);
				}
			}
		}

		if (val & MS_RDY_TIMEOUT) {
			FUNC3(chip, MS_TO_ERROR);
			return FUNC2(chip);
		}

		FUNC3(chip, MS_TO_ERROR);
		return FUNC2(chip);
	}

	return STATUS_SUCCESS;
}