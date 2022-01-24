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
typedef  int /*<<< orphan*/  u8 ;
struct rtsx_chip {int sd_ctl; scalar_t__ sd_ddr_tx_phase; } ;

/* Variables and functions */
 int SD_DDR_TX_PHASE_SET_BY_USER ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  TUNE_TX ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtsx_chip*) ; 
 int FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*) ; 

__attribute__((used)) static int FUNC4(struct rtsx_chip *chip)
{
	int retval;

	if (!(chip->sd_ctl & SD_DDR_TX_PHASE_SET_BY_USER)) {
		retval = FUNC1(chip);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	} else {
		retval = FUNC0(chip, (u8)chip->sd_ddr_tx_phase,
					 TUNE_TX);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	}

	retval = FUNC2(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (!(chip->sd_ctl & SD_DDR_TX_PHASE_SET_BY_USER)) {
		retval = FUNC3(chip);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}