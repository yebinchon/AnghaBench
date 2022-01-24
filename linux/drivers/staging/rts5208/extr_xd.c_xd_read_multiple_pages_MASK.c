#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct xd_info {int block_shift; scalar_t__ page_off; } ;
struct rtsx_chip {int /*<<< orphan*/  xd_timeout; TYPE_1__* srb; struct xd_info xd_card; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_data_direction; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int /*<<< orphan*/  DMA_512 ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ETIMEDOUT ; 
 int NO_NEW_BLK ; 
 int RING_BUFFER ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int XD_AUTO_CHK_DATA_STATUS ; 
 int /*<<< orphan*/  XD_CARD ; 
 int /*<<< orphan*/  XD_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct xd_info*) ; 
 int /*<<< orphan*/  XD_CHK_DATA_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct xd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct xd_info*) ; 
 int /*<<< orphan*/  XD_CTL ; 
 int XD_ECC1_ERROR ; 
 int XD_ECC1_UNCORRECTABLE ; 
 int XD_ECC2_ERROR ; 
 int XD_ECC2_UNCORRECTABLE ; 
 int /*<<< orphan*/  XD_ECC_ERROR ; 
 int XD_GPG ; 
 int /*<<< orphan*/  XD_NO_CARD ; 
 int /*<<< orphan*/  XD_PAGE_CNT ; 
 int /*<<< orphan*/  XD_PAGE_STATUS ; 
 int XD_PPB_EMPTY ; 
 int XD_PPB_TO_SIE ; 
 int /*<<< orphan*/  XD_PRG_ERROR ; 
 int XD_READ_PAGES ; 
 int /*<<< orphan*/  XD_RW_ADDR ; 
 int /*<<< orphan*/  XD_TO_ERROR ; 
 int /*<<< orphan*/  XD_TRANSFER ; 
 int XD_TRANSFER_END ; 
 int XD_TRANSFER_START ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 
 int FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*) ; 
 int FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,unsigned int*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct rtsx_chip*,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC15 (struct rtsx_chip*,int) ; 
 int FUNC16 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct rtsx_chip*,int) ; 
 int FUNC18 (struct rtsx_chip*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rtsx_chip*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct rtsx_chip*,int) ; 

__attribute__((used)) static int FUNC22(struct rtsx_chip *chip, u32 phy_blk,
				  u32 log_blk, u8 start_page, u8 end_page,
				  u8 *buf, unsigned int *index,
				  unsigned int *offset)
{
	struct xd_info *xd_card = &chip->xd_card;
	u32 page_addr, new_blk;
	u16 log_off;
	u8 reg_val, page_cnt;
	int zone_no, retval, i;

	if (start_page > end_page)
		goto status_fail;

	page_cnt = end_page - start_page;
	zone_no = (int)(log_blk / 1000);
	log_off = (u16)(log_blk % 1000);

	if ((phy_blk & 0x3FF) == 0x3FF) {
		for (i = 0; i < 256; i++) {
			page_addr = ((u32)i) << xd_card->block_shift;

			retval = FUNC18(chip, page_addr, NULL, 0);
			if (retval == STATUS_SUCCESS)
				break;

			if (FUNC3(chip, XD_CARD) != STATUS_SUCCESS) {
				FUNC19(chip, XD_NO_CARD);
				goto status_fail;
			}
		}
	}

	page_addr = (phy_blk << xd_card->block_shift) + start_page;

	FUNC6(chip);

	FUNC13(chip, page_addr, XD_RW_ADDR);
	FUNC4(chip, WRITE_REG_CMD, XD_CFG, XD_PPB_TO_SIE, XD_PPB_TO_SIE);
	FUNC4(chip, WRITE_REG_CMD, CARD_DATA_SOURCE, 0x01, RING_BUFFER);
	FUNC4(chip, WRITE_REG_CMD, XD_PAGE_CNT, 0xFF, page_cnt);
	FUNC4(chip, WRITE_REG_CMD, XD_CHK_DATA_STATUS,
		     XD_AUTO_CHK_DATA_STATUS, XD_AUTO_CHK_DATA_STATUS);

	FUNC11(chip->srb->sc_data_direction, chip,
			 page_cnt * 512, DMA_512);

	FUNC4(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
		     XD_TRANSFER_START | XD_READ_PAGES);
	FUNC4(chip, CHECK_REG_CMD, XD_TRANSFER,
		     XD_TRANSFER_END | XD_PPB_EMPTY,
		     XD_TRANSFER_END | XD_PPB_EMPTY);

	FUNC8(chip);

	retval = FUNC9(chip, XD_CARD, buf, page_cnt * 512,
					    FUNC10(chip->srb),
					    index, offset, DMA_FROM_DEVICE,
					    chip->xd_timeout);
	if (retval < 0) {
		FUNC5(chip);

		if (retval == -ETIMEDOUT) {
			FUNC19(chip, XD_TO_ERROR);
			goto status_fail;
		} else {
			goto fail;
		}
	}

	return STATUS_SUCCESS;

fail:
	retval = FUNC7(chip, XD_PAGE_STATUS, &reg_val);
	if (retval)
		return retval;

	if (reg_val !=  XD_GPG)
		FUNC19(chip, XD_PRG_ERROR);

	retval = FUNC7(chip, XD_CTL, &reg_val);
	if (retval)
		return retval;

	if (((reg_val & (XD_ECC1_ERROR | XD_ECC1_UNCORRECTABLE)) ==
				(XD_ECC1_ERROR | XD_ECC1_UNCORRECTABLE)) ||
		((reg_val & (XD_ECC2_ERROR | XD_ECC2_UNCORRECTABLE)) ==
			(XD_ECC2_ERROR | XD_ECC2_UNCORRECTABLE))) {
		FUNC12(100);

		if (FUNC3(chip, XD_CARD) != STATUS_SUCCESS) {
			FUNC19(chip, XD_NO_CARD);
			goto status_fail;
		}

		FUNC19(chip, XD_ECC_ERROR);

		new_blk = FUNC16(chip, zone_no);
		if (new_blk == NO_NEW_BLK) {
			FUNC2(xd_card);
			goto status_fail;
		}

		retval = FUNC14(chip, phy_blk, new_blk, 0,
				      xd_card->page_off + 1);
		if (retval != STATUS_SUCCESS) {
			if (!FUNC0(xd_card)) {
				retval = FUNC15(chip, new_blk);
				if (retval == STATUS_SUCCESS)
					FUNC21(chip, new_blk);
			} else {
				FUNC1(xd_card);
			}
			FUNC2(xd_card);
			goto status_fail;
		}
		FUNC20(chip, zone_no, log_off, (u16)(new_blk & 0x3FF));
		FUNC15(chip, phy_blk);
		FUNC17(chip, phy_blk);
		FUNC2(xd_card);
	}

status_fail:
	return STATUS_FAIL;
}