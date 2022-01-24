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
 int SETCONTRAST ; 
 scalar_t__ TXDUMMY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct lcd_device *ld, int value)
{
	int ret = 0;

	FUNC3();

	/* start by sending our set contrast cmd to mcu */
	if (FUNC1(SETCONTRAST) == TXDUMMY) {
		/* if successful push the new value */
		if (FUNC1(value) == TXDUMMY)
			goto success;
	}

	FUNC0(&ld->dev, "failed to set contrast\n");
	ret = -ETIMEDOUT;

success:
	FUNC2();
	return ret;
}