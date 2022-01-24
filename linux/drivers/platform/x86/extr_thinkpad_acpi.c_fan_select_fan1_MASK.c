#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ second_fan; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fan_select_offset ; 
 TYPE_1__ tp_features ; 

__attribute__((used)) static bool FUNC2(void)
{
	if (tp_features.second_fan) {
		u8 val;

		if (FUNC0(fan_select_offset, &val) < 0)
			return false;
		val &= 0xFEU;
		if (FUNC1(fan_select_offset, val) < 0)
			return false;
	}
	return true;
}