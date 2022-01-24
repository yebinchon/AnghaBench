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
typedef  int u8 ;
struct regulator {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*) ; 
 struct regulator* FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator*) ; 

__attribute__((used)) static inline u8 FUNC4(struct device *dev)
{
	struct regulator *vbus_supply;
	int current_uA;

	vbus_supply = FUNC2(dev, "vbus");
	if (FUNC0(vbus_supply))
		return 255;
	current_uA = FUNC1(vbus_supply);
	FUNC3(vbus_supply);
	if (current_uA <= 0 || current_uA > 510000)
		return 255;
	return current_uA / 1000 / 2;
}