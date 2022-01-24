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
typedef  int u32 ;
struct rtsx_chip {int /*<<< orphan*/  ss_en; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtsx_chip*,int) ; 
 scalar_t__ FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,int,int,int*) ; 

__attribute__((used)) static bool FUNC4(struct rtsx_chip *chip)
{
	u32 val;

	if (!chip->ss_en || FUNC0(chip, 0x5288))
		return false;

	if (FUNC1(chip) && !FUNC2(chip)) {
		FUNC3(chip, 1, 0x04, &val);
		if (val & 0x07)
			return false;
	}

	return true;
}