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
typedef  int /*<<< orphan*/  u32 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int ETIMEDOUT ; 
 int PINGPONG_BUFFER ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int XD_AUTO_CHK_DATA_STATUS ; 
 int /*<<< orphan*/  XD_CARD ; 
 int /*<<< orphan*/  XD_CHK_DATA_STATUS ; 
 int /*<<< orphan*/  XD_CTL ; 
 int XD_ECC1_ERROR ; 
 int XD_ECC1_UNCORRECTABLE ; 
 int XD_ECC2_ERROR ; 
 int XD_ECC2_UNCORRECTABLE ; 
 int /*<<< orphan*/  XD_ECC_BIT1 ; 
 int /*<<< orphan*/  XD_ECC_BIT2 ; 
 int /*<<< orphan*/  XD_ECC_BYTE1 ; 
 int /*<<< orphan*/  XD_ECC_BYTE2 ; 
 int XD_GPG ; 
 int /*<<< orphan*/  XD_PAGE_CNT ; 
 int /*<<< orphan*/  XD_PAGE_STATUS ; 
 int XD_READ_PAGES ; 
 int /*<<< orphan*/  XD_RW_ADDR ; 
 int /*<<< orphan*/  XD_TRANSFER ; 
 int XD_TRANSFER_END ; 
 int XD_TRANSFER_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rtsx_chip*,int,int*,int) ; 

__attribute__((used)) static int FUNC9(struct rtsx_chip *chip, u32 page_addr, u8 *buf,
		       int buf_len)
{
	int retval;
	u8 reg;

	if (!buf || (buf_len < 10))
		return STATUS_FAIL;

	FUNC4(chip);

	FUNC7(chip, page_addr, XD_RW_ADDR);

	FUNC1(chip, WRITE_REG_CMD, CARD_DATA_SOURCE,
		     0x01, PINGPONG_BUFFER);
	FUNC1(chip, WRITE_REG_CMD, XD_PAGE_CNT, 0xFF, 1);
	FUNC1(chip, WRITE_REG_CMD, XD_CHK_DATA_STATUS,
		     XD_AUTO_CHK_DATA_STATUS, XD_AUTO_CHK_DATA_STATUS);

	FUNC1(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
		     XD_TRANSFER_START | XD_READ_PAGES);
	FUNC1(chip, CHECK_REG_CMD, XD_TRANSFER, XD_TRANSFER_END,
		     XD_TRANSFER_END);

	retval = FUNC6(chip, XD_CARD, 250);
	if (retval == -ETIMEDOUT) {
		FUNC2(chip);
		return STATUS_FAIL;
	}

	retval = FUNC5(chip, XD_PAGE_STATUS, &reg);
	if (retval)
		return retval;
	if (reg != XD_GPG) {
		FUNC2(chip);
		return STATUS_FAIL;
	}

	retval = FUNC5(chip, XD_CTL, &reg);
	if (retval)
		return retval;
	if (!(reg & XD_ECC1_ERROR) || !(reg & XD_ECC1_UNCORRECTABLE)) {
		retval = FUNC8(chip, 0, buf, buf_len);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
		if (reg & XD_ECC1_ERROR) {
			u8 ecc_bit, ecc_byte;

			retval = FUNC5(chip, XD_ECC_BIT1,
						    &ecc_bit);
			if (retval)
				return retval;
			retval = FUNC5(chip, XD_ECC_BYTE1,
						    &ecc_byte);
			if (retval)
				return retval;

			FUNC0(FUNC3(chip), "ECC_BIT1 = 0x%x, ECC_BYTE1 = 0x%x\n",
				ecc_bit, ecc_byte);
			if (ecc_byte < buf_len) {
				FUNC0(FUNC3(chip), "Before correct: 0x%x\n",
					buf[ecc_byte]);
				buf[ecc_byte] ^= (1 << ecc_bit);
				FUNC0(FUNC3(chip), "After correct: 0x%x\n",
					buf[ecc_byte]);
			}
		}
	} else if (!(reg & XD_ECC2_ERROR) || !(reg & XD_ECC2_UNCORRECTABLE)) {
		FUNC2(chip);

		retval = FUNC8(chip, 256, buf, buf_len);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
		if (reg & XD_ECC2_ERROR) {
			u8 ecc_bit, ecc_byte;

			retval = FUNC5(chip, XD_ECC_BIT2,
						    &ecc_bit);
			if (retval)
				return retval;
			retval = FUNC5(chip, XD_ECC_BYTE2,
						    &ecc_byte);
			if (retval)
				return retval;

			FUNC0(FUNC3(chip), "ECC_BIT2 = 0x%x, ECC_BYTE2 = 0x%x\n",
				ecc_bit, ecc_byte);
			if (ecc_byte < buf_len) {
				FUNC0(FUNC3(chip), "Before correct: 0x%x\n",
					buf[ecc_byte]);
				buf[ecc_byte] ^= (1 << ecc_bit);
				FUNC0(FUNC3(chip), "After correct: 0x%x\n",
					buf[ecc_byte]);
			}
		}
	} else {
		FUNC2(chip);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}