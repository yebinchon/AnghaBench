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
struct backlight_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BL_MAX_BRIGHT ; 
 int ETIMEDOUT ; 
 int GETBRIGHTNESS ; 
 int PPC_LDD1 ; 
 int PPSR ; 
 int TXDUMMY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct backlight_device *bd)
{
	int ret;

	/* check if backlight is on */
	if (!(PPSR & PPC_LDD1))
		return 0;

	FUNC3();

	/* cmd should return txdummy */
	ret = FUNC1(GETBRIGHTNESS);

	if (FUNC1(GETBRIGHTNESS) != TXDUMMY) {
		FUNC0(&bd->dev, "get brightness timeout\n");
		FUNC2();
		return -ETIMEDOUT;
	}

	/* exchange txdummy for value */
	ret = FUNC1(TXDUMMY);

	FUNC2();

	return BL_MAX_BRIGHT - ret;
}