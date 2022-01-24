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
struct otm3225a_data {int power; int /*<<< orphan*/  spi; } ;
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  display_off ; 
 int /*<<< orphan*/  display_on ; 
 struct otm3225a_data* FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lcd_device *ld, int power)
{
	struct otm3225a_data *dd = FUNC1(ld);

	if (power == dd->power)
		return 0;

	if (power > FB_BLANK_UNBLANK)
		FUNC2(dd->spi, display_off, FUNC0(display_off));
	else
		FUNC2(dd->spi, display_on, FUNC0(display_on));
	dd->power = power;

	return 0;
}