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
struct sd_info {int sd_lock_status; scalar_t__ sd_lock_notify; } ;
struct scsi_cmnd {int dummy; } ;
struct rtsx_chip {struct sd_info sd_card; int /*<<< orphan*/  lun_mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 scalar_t__ SD_CARD ; 
 int SD_LOCKED ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_CHANGE ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_READ_FORBIDDEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,unsigned int) ; 
 scalar_t__ FUNC4 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	unsigned int lun = FUNC1(srb);

	if (!FUNC3(chip, lun)) {
		FUNC5(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;
	}

	if (!(FUNC0(chip->lun_mc, lun))) {
		FUNC2(chip->lun_mc, lun);
		FUNC5(chip, lun, SENSE_TYPE_MEDIA_CHANGE);
		return TRANSPORT_FAILED;
	}

#ifdef SUPPORT_SD_LOCK
	if (get_lun_card(chip, SCSI_LUN(srb)) == SD_CARD) {
		struct sd_info *sd_card = &chip->sd_card;

		if (sd_card->sd_lock_notify) {
			sd_card->sd_lock_notify = 0;
			set_sense_type(chip, lun, SENSE_TYPE_MEDIA_CHANGE);
			return TRANSPORT_FAILED;
		} else if (sd_card->sd_lock_status & SD_LOCKED) {
			set_sense_type(chip, lun,
				       SENSE_TYPE_MEDIA_READ_FORBIDDEN);
			return TRANSPORT_FAILED;
		}
	}
#endif

	return TRANSPORT_GOOD;
}