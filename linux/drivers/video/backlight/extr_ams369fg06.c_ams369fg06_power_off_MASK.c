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
struct lcd_platform_data {int /*<<< orphan*/  (* power_on ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  power_off_delay; } ;
struct ams369fg06 {int /*<<< orphan*/  ld; int /*<<< orphan*/  dev; struct lcd_platform_data* lcd_pd; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct ams369fg06*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ams369fg06 *lcd)
{
	int ret;
	struct lcd_platform_data *pd;

	pd = lcd->lcd_pd;

	ret = FUNC0(lcd);
	if (ret) {
		FUNC1(lcd->dev, "lcd setting failed.\n");
		return -EIO;
	}

	FUNC2(pd->power_off_delay);

	if (pd->power_on)
		pd->power_on(lcd->ld, 0);

	return 0;
}