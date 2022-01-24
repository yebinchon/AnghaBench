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
struct scsi_cmnd {int dummy; } ;
struct rtsx_chip {scalar_t__* card_bus_width; } ;

/* Variables and functions */
 scalar_t__ MS_CARD ; 
 unsigned int FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ SD_CARD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,unsigned int) ; 
 scalar_t__ FUNC2 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	unsigned int lun = FUNC0(srb);
	u8 card, bus_width;

	if (!FUNC1(chip, lun)) {
		FUNC6(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;
	}

	card = FUNC2(chip, lun);
	if ((card == SD_CARD) || (card == MS_CARD)) {
		bus_width = chip->card_bus_width[lun];
	} else {
		FUNC6(chip, lun, SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
		return TRANSPORT_FAILED;
	}

	FUNC5(srb, 0);
	FUNC3(&bus_width, FUNC4(srb), srb);

	return TRANSPORT_GOOD;
}