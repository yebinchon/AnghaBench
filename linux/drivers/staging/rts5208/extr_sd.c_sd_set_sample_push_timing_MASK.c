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
struct sd_info {int dummy; } ;
struct rtsx_chip {int sd_ctl; scalar_t__ asic_code; struct sd_info sd_card; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sd_info*) ; 
 scalar_t__ FUNC1 (struct sd_info*) ; 
 int /*<<< orphan*/  REG_SD_CFG1 ; 
 int SD_PUSH_POINT_CTL_MASK ; 
 int SD_PUSH_POINT_DELAY ; 
 int SD_SAMPLE_POINT_AUTO ; 
 int SD_SAMPLE_POINT_CTL_MASK ; 
 int SD_SAMPLE_POINT_DELAY ; 
 int STATUS_SUCCESS ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct rtsx_chip *chip)
{
	int retval;
	struct sd_info *sd_card = &chip->sd_card;
	u8 val = 0;

	if ((chip->sd_ctl & SD_PUSH_POINT_CTL_MASK) == SD_PUSH_POINT_DELAY)
		val |= 0x10;

	if ((chip->sd_ctl & SD_SAMPLE_POINT_CTL_MASK) == SD_SAMPLE_POINT_AUTO) {
		if (chip->asic_code) {
			if (FUNC1(sd_card) || FUNC0(sd_card)) {
				if (val & 0x10)
					val |= 0x04;
				else
					val |= 0x08;
			}
		} else {
			if (val & 0x10)
				val |= 0x04;
			else
				val |= 0x08;
		}
	} else if ((chip->sd_ctl & SD_SAMPLE_POINT_CTL_MASK) ==
		SD_SAMPLE_POINT_DELAY) {
		if (val & 0x10)
			val |= 0x04;
		else
			val |= 0x08;
	}

	retval = FUNC2(chip, REG_SD_CFG1, 0x1C, val);
	if (retval)
		return retval;

	return STATUS_SUCCESS;
}