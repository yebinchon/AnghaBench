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
struct fusb302_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSB_REG_SWITCHES1 ; 
 int /*<<< orphan*/  FUSB_REG_SWITCHES1_AUTO_GCRC ; 
 int FUNC0 (struct fusb302_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fusb302_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fusb302_chip *chip, bool on)
{
	if (on)
		return FUNC1(chip, FUSB_REG_SWITCHES1,
					    FUSB_REG_SWITCHES1_AUTO_GCRC);
	return FUNC0(chip, FUSB_REG_SWITCHES1,
					    FUSB_REG_SWITCHES1_AUTO_GCRC);
}