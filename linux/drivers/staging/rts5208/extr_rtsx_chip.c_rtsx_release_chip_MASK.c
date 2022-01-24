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
struct rtsx_chip {scalar_t__ card_ready; scalar_t__ card_exist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 

void FUNC2(struct rtsx_chip *chip)
{
	FUNC1(chip);
	FUNC0(chip);
	chip->card_exist = 0;
	chip->card_ready = 0;
}