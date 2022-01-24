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
typedef  int u32 ;
struct rtsx_chip {int product_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtsx_chip*,int) ; 
 scalar_t__ FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int,int) ; 

__attribute__((used)) static void FUNC7(struct rtsx_chip *chip, u8 dstate)
{
	u32 ultmp;

	FUNC2(FUNC3(chip), "%04x set pm_dstate to %d\n",
		chip->product_id, dstate);

	if (FUNC1(chip)) {
		u8 func_no;

		if (FUNC0(chip, 0x5288))
			func_no = 2;
		else
			func_no = 1;

		FUNC4(chip, func_no, 0x84, &ultmp);
		FUNC2(FUNC3(chip), "pm_dstate of function %d: 0x%x\n",
			(int)func_no, ultmp);
		FUNC5(chip, func_no, 0x84, 0xFF, dstate);
	}

	FUNC6(chip, 0x44, dstate);
	FUNC6(chip, 0x45, 0);
}