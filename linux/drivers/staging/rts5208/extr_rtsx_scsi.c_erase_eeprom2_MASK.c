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
typedef  int u16 ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {scalar_t__ ss_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_WRITE_ERR ; 
 int /*<<< orphan*/  SSC_PDCTL ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rtsx_chip*,unsigned short) ; 
 int FUNC8 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	unsigned short addr;
	int retval;
	u8 mode;

	FUNC1(chip);

	if (chip->ss_en && (FUNC4(chip) == RTSX_STAT_SS)) {
		FUNC2(chip);
		FUNC9(100);
	}
	FUNC5(chip, RTSX_STAT_RUN);

	retval = FUNC3(chip, SSC_PDCTL);
	if (retval != STATUS_SUCCESS) {
		FUNC6(chip, FUNC0(srb), SENSE_TYPE_MEDIA_WRITE_ERR);
		return TRANSPORT_FAILED;
	}

	mode = srb->cmnd[3];
	addr = ((u16)srb->cmnd[4] << 8) | srb->cmnd[5];

	if (mode == 0) {
		retval = FUNC8(chip);
		if (retval != STATUS_SUCCESS) {
			FUNC6(chip, FUNC0(srb),
				       SENSE_TYPE_MEDIA_WRITE_ERR);
			return TRANSPORT_FAILED;
		}
	} else if (mode == 1) {
		retval = FUNC7(chip, addr);
		if (retval != STATUS_SUCCESS) {
			FUNC6(chip, FUNC0(srb),
				       SENSE_TYPE_MEDIA_WRITE_ERR);
			return TRANSPORT_FAILED;
		}
	} else {
		FUNC6(chip, FUNC0(srb),
			       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	return TRANSPORT_GOOD;
}