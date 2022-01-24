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
struct st_pio_control {struct regmap_field* alt; } ;
struct regmap_field {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regmap_field*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap_field*,unsigned int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct st_pio_control *pc,
				int pin_id, int function)
{
	struct regmap_field *alt = pc->alt;
	unsigned int val;
	int pin = FUNC2(pin_id);
	int offset = pin * 4;

	if (!alt)
		return;

	FUNC0(alt, &val);
	val &= ~(0xf << offset);
	val |= function << offset;
	FUNC1(alt, val);
}