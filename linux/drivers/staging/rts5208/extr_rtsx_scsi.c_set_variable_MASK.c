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
struct xd_info {int xd_clock; } ;
struct sd_info {int sd_clock; } ;
struct scsi_cmnd {int* cmnd; } ;
struct ms_info {int ms_clock; } ;
struct rtsx_chip {int blink_led; scalar_t__ ss_en; struct ms_info ms_card; struct sd_info sd_card; struct xd_info xd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_GPIO ; 
#define  MS_CARD 130 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 unsigned int FUNC0 (struct scsi_cmnd*) ; 
#define  SD_CARD 129 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_WRITE_ERR ; 
 int /*<<< orphan*/  SSC_PDCTL ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
#define  XD_CARD 128 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	unsigned int lun = FUNC0(srb);

	if (srb->cmnd[3] == 1) {
		/* Variable Clock */
		struct xd_info *xd_card = &chip->xd_card;
		struct sd_info *sd_card = &chip->sd_card;
		struct ms_info *ms_card = &chip->ms_card;

		switch (srb->cmnd[4]) {
		case XD_CARD:
			xd_card->xd_clock = srb->cmnd[5];
			break;

		case SD_CARD:
			sd_card->sd_clock = srb->cmnd[5];
			break;

		case MS_CARD:
			ms_card->ms_clock = srb->cmnd[5];
			break;

		default:
			FUNC6(chip, lun,
				       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
			return TRANSPORT_FAILED;
		}
	} else if (srb->cmnd[3] == 2) {
		if (srb->cmnd[4]) {
			chip->blink_led = 1;
		} else {
			int retval;

			chip->blink_led = 0;

			FUNC1(chip);

			if (chip->ss_en &&
			    (FUNC4(chip) == RTSX_STAT_SS)) {
				FUNC2(chip);
				FUNC8(100);
			}
			FUNC5(chip, RTSX_STAT_RUN);

			retval = FUNC3(chip, SSC_PDCTL);
			if (retval != STATUS_SUCCESS) {
				FUNC6(chip, FUNC0(srb),
					       SENSE_TYPE_MEDIA_WRITE_ERR);
				return TRANSPORT_FAILED;
			}

			FUNC7(chip, LED_GPIO);
		}
	} else {
		FUNC6(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	return TRANSPORT_GOOD;
}