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
struct lcd_device {int dummy; } ;
struct corgi_lcd {int power; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct corgi_lcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct corgi_lcd*) ; 
 struct corgi_lcd* FUNC3 (struct lcd_device*) ; 

__attribute__((used)) static int FUNC4(struct lcd_device *ld, int power)
{
	struct corgi_lcd *lcd = FUNC3(ld);

	if (FUNC0(power) && !FUNC0(lcd->power))
		FUNC2(lcd);

	if (!FUNC0(power) && FUNC0(lcd->power))
		FUNC1(lcd);

	lcd->power = power;
	return 0;
}