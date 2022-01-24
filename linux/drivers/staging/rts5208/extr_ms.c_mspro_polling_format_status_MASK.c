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
struct ms_info {scalar_t__ format_status; scalar_t__ pro_under_formatting; } ;
struct rtsx_chip {struct ms_info ms_card; } ;

/* Variables and functions */
 scalar_t__ FORMAT_IN_PROGRESS ; 
 int /*<<< orphan*/  MS_SHORT_DATA_LEN ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

void FUNC3(struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	int i;

	if (ms_card->pro_under_formatting &&
	    (FUNC1(chip) != RTSX_STAT_SS)) {
		FUNC2(chip, RTSX_STAT_RUN);

		for (i = 0; i < 65535; i++) {
			FUNC0(chip, MS_SHORT_DATA_LEN);
			if (ms_card->format_status != FORMAT_IN_PROGRESS)
				break;
		}
	}
}