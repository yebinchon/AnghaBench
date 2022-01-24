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
typedef  int /*<<< orphan*/  u16 ;
struct sense_data_t {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct ms_info {scalar_t__ format_status; scalar_t__ progress; scalar_t__ pro_under_formatting; } ;
struct rtsx_chip {struct sense_data_t* sense_buffer; struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUR_ERR ; 
 scalar_t__ FORMAT_IN_PROGRESS ; 
 scalar_t__ FORMAT_SUCCESS ; 
 scalar_t__ MS_CARD ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 unsigned int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_FORMAT_CMD_FAILED ; 
 int /*<<< orphan*/  SENSE_TYPE_NO_SENSE ; 
 int TRANSPORT_ERROR ; 
 int TRANSPORT_GOOD ; 
 scalar_t__ FUNC1 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	struct sense_data_t *sense;
	unsigned int lun = FUNC0(srb);
	struct ms_info *ms_card = &chip->ms_card;
	unsigned char *tmp, *buf;

	sense = &chip->sense_buffer[lun];

	if ((FUNC1(chip, lun) == MS_CARD) &&
	    ms_card->pro_under_formatting) {
		if (ms_card->format_status == FORMAT_SUCCESS) {
			FUNC8(chip, lun, SENSE_TYPE_NO_SENSE);
			ms_card->pro_under_formatting = 0;
			ms_card->progress = 0;
		} else if (ms_card->format_status == FORMAT_IN_PROGRESS) {
			/* Logical Unit Not Ready Format in Progress */
			FUNC7(chip, lun, CUR_ERR, 0x02, 0, 0x04, 0x04,
				       0, (u16)(ms_card->progress));
		} else {
			/* Format Command Failed */
			FUNC8(chip, lun, SENSE_TYPE_FORMAT_CMD_FAILED);
			ms_card->pro_under_formatting = 0;
			ms_card->progress = 0;
		}

		FUNC3(chip, RTSX_STAT_RUN);
	}

	buf = FUNC10(FUNC5(srb));
	if (!buf)
		return TRANSPORT_ERROR;

	tmp = (unsigned char *)sense;
	FUNC2(buf, tmp, FUNC5(srb));

	FUNC4(buf, FUNC5(srb), srb);
	FUNC9(buf);

	FUNC6(srb, 0);
	/* Reset Sense Data */
	FUNC8(chip, lun, SENSE_TYPE_NO_SENSE);
	return TRANSPORT_GOOD;
}