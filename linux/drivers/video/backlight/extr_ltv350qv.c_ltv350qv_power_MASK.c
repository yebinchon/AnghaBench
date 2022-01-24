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
struct ltv350qv {int power; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ltv350qv*) ; 
 int FUNC2 (struct ltv350qv*) ; 

__attribute__((used)) static int FUNC3(struct ltv350qv *lcd, int power)
{
	int ret = 0;

	if (FUNC0(power) && !FUNC0(lcd->power))
		ret = FUNC2(lcd);
	else if (!FUNC0(power) && FUNC0(lcd->power))
		ret = FUNC1(lcd);

	if (!ret)
		lcd->power = power;

	return ret;
}