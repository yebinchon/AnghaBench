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
struct regmap {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 struct regmap* FUNC1 (char*) ; 

__attribute__((used)) static struct regmap *FUNC2(void)
{
	struct regmap *regmap;

	regmap = FUNC1("atmel,sama5d2-sfr");
	if (FUNC0(regmap)) {
		regmap = FUNC1("microchip,sam9x60-sfr");
		if (FUNC0(regmap))
			regmap = NULL;
	}

	return regmap;
}