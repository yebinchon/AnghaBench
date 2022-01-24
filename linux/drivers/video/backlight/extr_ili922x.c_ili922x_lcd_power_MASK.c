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
struct ili922x {int power; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ili922x *lcd, int power)
{
	int ret = 0;

	if (FUNC0(power) && !FUNC0(lcd->power))
		ret = FUNC2(lcd->spi);
	else if (!FUNC0(power) && FUNC0(lcd->power))
		ret = FUNC1(lcd->spi);

	if (!ret)
		lcd->power = power;

	return ret;
}