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
struct ms_info {int /*<<< orphan*/  ms_clock; } ;
struct rtsx_chip {struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  MS_CARD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval;

	retval = FUNC0(chip, MS_CARD);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC1(chip, ms_card->ms_clock);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}