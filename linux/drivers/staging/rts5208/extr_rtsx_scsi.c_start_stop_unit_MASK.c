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
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
#define  LOAD_MEDIUM 131 
#define  MAKE_MEDIUM_READY 130 
 unsigned int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
#define  STOP_MEDIUM 129 
 int TRANSPORT_ERROR ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
#define  UNLOAD_MEDIUM 128 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	unsigned int lun = FUNC0(srb);

	FUNC4(srb, FUNC3(srb));

	if (srb->cmnd[1] == 1)
		return TRANSPORT_GOOD;

	switch (srb->cmnd[0x4]) {
	case STOP_MEDIUM:
		/* Media disabled */
		return TRANSPORT_GOOD;

	case UNLOAD_MEDIUM:
		/* Media shall be unload */
		if (FUNC1(chip, lun))
			FUNC2(chip, lun);
		return TRANSPORT_GOOD;

	case MAKE_MEDIUM_READY:
	case LOAD_MEDIUM:
		if (FUNC1(chip, lun))
			return TRANSPORT_GOOD;
		FUNC5(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;

		break;
	}

	return TRANSPORT_ERROR;
}