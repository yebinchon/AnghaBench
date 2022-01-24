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
struct sd_info {scalar_t__ cleanup_counter; scalar_t__ seq_mode; } ;
struct rtsx_chip {struct sd_info sd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 

void FUNC3(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;

	if (sd_card->seq_mode) {
		FUNC0(FUNC1(chip), "SD: stop transmission\n");
		FUNC2(chip);
		sd_card->cleanup_counter = 0;
	}
}