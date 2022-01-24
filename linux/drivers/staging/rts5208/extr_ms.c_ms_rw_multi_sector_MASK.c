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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct ms_delay_write_tag {int delay_write_flag; scalar_t__ logblock; scalar_t__ pageoff; scalar_t__ old_phyblock; scalar_t__ new_phyblock; } ;
struct ms_info {int block_shift; int page_off; TYPE_1__* segment; scalar_t__ cleanup_counter; struct ms_delay_write_tag delay_write; } ;
struct rtsx_chip {int /*<<< orphan*/  card_fail; struct ms_info ms_card; } ;
struct TYPE_2__ {scalar_t__ build_flag; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  MS_CARD ; 
 int /*<<< orphan*/  MS_NO_ERROR ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_WRITE_ERR ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct rtsx_chip*,int) ; 
 int FUNC5 (struct rtsx_chip*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct rtsx_chip*) ; 
 int FUNC7 (struct rtsx_chip*,scalar_t__) ; 
 int FUNC8 (struct rtsx_chip*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct rtsx_chip*,int,scalar_t__) ; 
 scalar_t__ FUNC10 (struct rtsx_chip*,int) ; 
 int FUNC11 (struct rtsx_chip*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC12 (struct rtsx_chip*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_chip*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct rtsx_chip*,scalar_t__) ; 
 scalar_t__* ms_start_idx ; 
 int FUNC17 (struct rtsx_chip*) ; 
 int FUNC18 (struct rtsx_chip*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC19 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC20 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC22 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC23 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct rtsx_chip*,int) ; 

__attribute__((used)) static int FUNC25(struct scsi_cmnd *srb, struct rtsx_chip *chip,
			      u32 start_sector, u16 sector_cnt)
{
	struct ms_info *ms_card = &chip->ms_card;
	unsigned int lun = FUNC1(srb);
	int retval, seg_no;
	unsigned int index = 0, offset = 0;
	u16 old_blk = 0, new_blk = 0, log_blk, total_sec_cnt = sector_cnt;
	u8 start_page, end_page = 0, page_cnt;
	u8 *ptr;
#ifdef MS_DELAY_WRITE
	struct ms_delay_write_tag *delay_write = &ms_card->delay_write;
#endif

	FUNC14(chip, MS_NO_ERROR);

	ms_card->cleanup_counter = 0;

	ptr = (u8 *)FUNC22(srb);

	retval = FUNC17(chip);
	if (retval != STATUS_SUCCESS) {
		FUNC13(srb, chip);
		return STATUS_FAIL;
	}

	log_blk = (u16)(start_sector >> ms_card->block_shift);
	start_page = (u8)(start_sector & ms_card->page_off);

	for (seg_no = 0; seg_no < FUNC0(ms_start_idx) - 1; seg_no++) {
		if (log_blk < ms_start_idx[seg_no + 1])
			break;
	}

	if (ms_card->segment[seg_no].build_flag == 0) {
		retval = FUNC4(chip, seg_no);
		if (retval != STATUS_SUCCESS) {
			chip->card_fail |= MS_CARD;
			FUNC23(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
			return STATUS_FAIL;
		}
	}

	if (srb->sc_data_direction == DMA_TO_DEVICE) {
#ifdef MS_DELAY_WRITE
		if (delay_write->delay_write_flag &&
		    (delay_write->logblock == log_blk) &&
		    (start_page > delay_write->pageoff)) {
			delay_write->delay_write_flag = 0;
			retval = ms_copy_page(chip,
					      delay_write->old_phyblock,
					      delay_write->new_phyblock,
					      log_blk,
					      delay_write->pageoff, start_page);
			if (retval != STATUS_SUCCESS) {
				set_sense_type(chip, lun,
					       SENSE_TYPE_MEDIA_WRITE_ERR);
				return STATUS_FAIL;
			}
			old_blk = delay_write->old_phyblock;
			new_blk = delay_write->new_phyblock;
		} else if (delay_write->delay_write_flag &&
				(delay_write->logblock == log_blk) &&
				(start_page == delay_write->pageoff)) {
			delay_write->delay_write_flag = 0;
			old_blk = delay_write->old_phyblock;
			new_blk = delay_write->new_phyblock;
		} else {
			retval = ms_delay_write(chip);
			if (retval != STATUS_SUCCESS) {
				set_sense_type(chip, lun,
					       SENSE_TYPE_MEDIA_WRITE_ERR);
				return STATUS_FAIL;
			}
#endif
			old_blk = FUNC9
					(chip, seg_no,
					 log_blk - ms_start_idx[seg_no]);
			new_blk  = FUNC10(chip, seg_no);
			if ((old_blk == 0xFFFF) || (new_blk == 0xFFFF)) {
				FUNC23(chip, lun,
					       SENSE_TYPE_MEDIA_WRITE_ERR);
				return STATUS_FAIL;
			}

			retval = FUNC11(chip, old_blk, new_blk,
						  log_blk, start_page);
			if (retval != STATUS_SUCCESS) {
				if (FUNC2(chip, MS_CARD) !=
				    STATUS_SUCCESS) {
					FUNC23
						(chip, lun,
						SENSE_TYPE_MEDIA_NOT_PRESENT);
					return STATUS_FAIL;
				}
				FUNC23(chip, lun,
					       SENSE_TYPE_MEDIA_WRITE_ERR);
				return STATUS_FAIL;
			}
#ifdef MS_DELAY_WRITE
		}
#endif
	} else {
#ifdef MS_DELAY_WRITE
		retval = ms_delay_write(chip);
		if (retval != STATUS_SUCCESS) {
			if (detect_card_cd(chip, MS_CARD) != STATUS_SUCCESS) {
				set_sense_type(chip, lun,
					       SENSE_TYPE_MEDIA_NOT_PRESENT);
				return STATUS_FAIL;
			}
			set_sense_type(chip, lun,
				       SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
			return STATUS_FAIL;
		}
#endif
		old_blk = FUNC9(chip, seg_no,
					 log_blk - ms_start_idx[seg_no]);
		if (old_blk == 0xFFFF) {
			FUNC23(chip, lun,
				       SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
			return STATUS_FAIL;
		}
	}

	FUNC3(FUNC19(chip), "seg_no = %d, old_blk = 0x%x, new_blk = 0x%x\n",
		seg_no, old_blk, new_blk);

	while (total_sec_cnt) {
		if ((start_page + total_sec_cnt) > (ms_card->page_off + 1))
			end_page = ms_card->page_off + 1;
		else
			end_page = start_page + (u8)total_sec_cnt;

		page_cnt = end_page - start_page;

		FUNC3(FUNC19(chip), "start_page = %d, end_page = %d, page_cnt = %d\n",
			start_page, end_page, page_cnt);

		if (srb->sc_data_direction == DMA_FROM_DEVICE) {
			retval = FUNC12(chip,
							old_blk, log_blk,
							start_page, end_page,
							ptr, &index, &offset);
		} else {
			retval = FUNC18(chip, old_blk, new_blk,
							 log_blk, start_page,
							 end_page, ptr, &index,
							 &offset);
		}

		if (retval != STATUS_SUCCESS) {
			FUNC24(chip, 1);
			if (FUNC2(chip, MS_CARD) != STATUS_SUCCESS) {
				FUNC23(chip, lun,
					       SENSE_TYPE_MEDIA_NOT_PRESENT);
				return STATUS_FAIL;
			}
			FUNC13(srb, chip);
			return STATUS_FAIL;
		}

		if (srb->sc_data_direction == DMA_TO_DEVICE) {
			if (end_page == (ms_card->page_off + 1)) {
				retval = FUNC7(chip, old_blk);
				if (retval == STATUS_SUCCESS)
					FUNC16(chip, old_blk);

				FUNC15(chip, seg_no,
					       log_blk - ms_start_idx[seg_no],
					       new_blk);
			}
		}

		total_sec_cnt -= page_cnt;
		if (FUNC21(srb) == 0)
			ptr += page_cnt * 512;

		if (total_sec_cnt == 0)
			break;

		log_blk++;

		for (seg_no = 0; seg_no < FUNC0(ms_start_idx) - 1;
				seg_no++) {
			if (log_blk < ms_start_idx[seg_no + 1])
				break;
		}

		if (ms_card->segment[seg_no].build_flag == 0) {
			retval = FUNC4(chip, seg_no);
			if (retval != STATUS_SUCCESS) {
				chip->card_fail |= MS_CARD;
				FUNC23(chip, lun,
					       SENSE_TYPE_MEDIA_NOT_PRESENT);
				return STATUS_FAIL;
			}
		}

		old_blk = FUNC9(chip, seg_no,
					 log_blk - ms_start_idx[seg_no]);
		if (old_blk == 0xFFFF) {
			FUNC13(srb, chip);
			return STATUS_FAIL;
		}

		if (srb->sc_data_direction == DMA_TO_DEVICE) {
			new_blk = FUNC10(chip, seg_no);
			if (new_blk == 0xFFFF) {
				FUNC13(srb, chip);
				return STATUS_FAIL;
			}
		}

		FUNC3(FUNC19(chip), "seg_no = %d, old_blk = 0x%x, new_blk = 0x%x\n",
			seg_no, old_blk, new_blk);

		start_page = 0;
	}

	if (srb->sc_data_direction == DMA_TO_DEVICE) {
		if (end_page < (ms_card->page_off + 1)) {
#ifdef MS_DELAY_WRITE
			delay_write->delay_write_flag = 1;
			delay_write->old_phyblock = old_blk;
			delay_write->new_phyblock = new_blk;
			delay_write->logblock = log_blk;
			delay_write->pageoff = end_page;
#else
			retval = FUNC8(chip, old_blk, new_blk,
						 log_blk, end_page);
			if (retval != STATUS_SUCCESS) {
				if (FUNC2(chip, MS_CARD) !=
				    STATUS_SUCCESS) {
					FUNC23
						(chip, lun,
						SENSE_TYPE_MEDIA_NOT_PRESENT);
					return STATUS_FAIL;
				}

				FUNC13(srb, chip);
				return STATUS_FAIL;
			}
#endif
		}
	}

	FUNC20(srb, 0);

	return STATUS_SUCCESS;
}