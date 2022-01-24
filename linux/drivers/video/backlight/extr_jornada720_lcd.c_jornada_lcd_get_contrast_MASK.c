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
struct lcd_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FB_BLANK_UNBLANK ; 
 int GETCONTRAST ; 
 int TXDUMMY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct lcd_device*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct lcd_device *ld)
{
	int ret;

	if (FUNC1(ld) != FB_BLANK_UNBLANK)
		return 0;

	FUNC4();

	if (FUNC2(GETCONTRAST) == TXDUMMY) {
		ret = FUNC2(TXDUMMY);
		goto success;
	}

	FUNC0(&ld->dev, "failed to set contrast\n");
	ret = -ETIMEDOUT;

success:
	FUNC3();
	return ret;
}