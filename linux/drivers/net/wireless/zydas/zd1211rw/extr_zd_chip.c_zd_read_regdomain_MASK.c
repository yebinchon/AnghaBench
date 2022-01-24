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
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_SUBID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_chip*) ; 
 int FUNC4 (struct zd_chip*,int*,int /*<<< orphan*/ ) ; 

int FUNC5(struct zd_chip *chip, u8 *regdomain)
{
	int r;
	u32 value;

	FUNC1(&chip->mutex);
	r = FUNC4(chip, &value, E2P_SUBID);
	FUNC2(&chip->mutex);
	if (r)
		return r;

	*regdomain = value >> 16;
	FUNC0(FUNC3(chip), "regdomain: %#04x\n", *regdomain);

	return 0;
}