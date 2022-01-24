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
struct wm831x {int /*<<< orphan*/  dev; } ;
struct chg_map {int val; int reg_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int,char const*) ; 

__attribute__((used)) static void FUNC2(struct wm831x *wm831x,
				       struct chg_map *map, int count, int val,
				       int *reg, const char *name,
				       const char *units)
{
	int i;

	for (i = 0; i < count; i++)
		if (val == map[i].val)
			break;
	if (i == count) {
		FUNC1(wm831x->dev, "Invalid %s %d%s\n",
			name, val, units);
	} else {
		*reg |= map[i].reg_val;
		FUNC0(wm831x->dev, "Set %s of %d%s\n", name, val, units);
	}
}