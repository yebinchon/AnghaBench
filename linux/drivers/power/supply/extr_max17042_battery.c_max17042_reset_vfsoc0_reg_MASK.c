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
struct max17042_chip {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX17042_VFSOC ; 
 int /*<<< orphan*/  MAX17042_VFSOC0 ; 
 int /*<<< orphan*/  MAX17042_VFSOC0Enable ; 
 int /*<<< orphan*/  VFSOC0_LOCK ; 
 int /*<<< orphan*/  VFSOC0_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct max17042_chip *chip)
{
	unsigned int vfSoc;
	struct regmap *map = chip->regmap;

	FUNC1(map, MAX17042_VFSOC, &vfSoc);
	FUNC2(map, MAX17042_VFSOC0Enable, VFSOC0_UNLOCK);
	FUNC0(map, MAX17042_VFSOC0, vfSoc);
	FUNC2(map, MAX17042_VFSOC0Enable, VFSOC0_LOCK);
}