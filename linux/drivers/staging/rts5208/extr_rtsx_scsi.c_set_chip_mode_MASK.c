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
typedef  int u16 ;
struct scsi_cmnd {scalar_t__* cmnd; } ;
struct rtsx_chip {int phy_debug_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDRESUMECTL ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*,int,int*) ; 
 int FUNC5 (struct rtsx_chip*,int,int) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int phy_debug_mode;
	int retval;
	u16 reg;

	if (!FUNC0(chip, 0x5208)) {
		FUNC7(chip, FUNC1(srb),
			       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	phy_debug_mode = (int)(srb->cmnd[3]);

	if (phy_debug_mode) {
		chip->phy_debug_mode = 1;
		retval = FUNC6(chip, CDRESUMECTL, 0x77, 0);
		if (retval != STATUS_SUCCESS)
			return TRANSPORT_FAILED;

		FUNC2(chip);

		retval = FUNC4(chip, 0x1C, &reg);
		if (retval != STATUS_SUCCESS)
			return TRANSPORT_FAILED;

		reg |= 0x0001;
		retval = FUNC5(chip, 0x1C, reg);
		if (retval != STATUS_SUCCESS)
			return TRANSPORT_FAILED;
	} else {
		chip->phy_debug_mode = 0;
		retval = FUNC6(chip, CDRESUMECTL, 0x77, 0x77);
		if (retval != STATUS_SUCCESS)
			return TRANSPORT_FAILED;

		FUNC3(chip);

		retval = FUNC4(chip, 0x1C, &reg);
		if (retval != STATUS_SUCCESS)
			return TRANSPORT_FAILED;

		reg &= 0xFFFE;
		retval = FUNC5(chip, 0x1C, reg);
		if (retval != STATUS_SUCCESS)
			return TRANSPORT_FAILED;
	}

	return TRANSPORT_GOOD;
}