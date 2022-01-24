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
struct color_conv_coef {int /*<<< orphan*/  full_range; int /*<<< orphan*/  bcb; int /*<<< orphan*/  by; int /*<<< orphan*/  bcr; int /*<<< orphan*/  gcr; int /*<<< orphan*/  gcb; int /*<<< orphan*/  rcb; int /*<<< orphan*/  gy; int /*<<< orphan*/  ry; int /*<<< orphan*/  rcr; } ;
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(enum omap_plane plane,
		const struct color_conv_coef *ct)
{
#define CVAL(x, y) (FLD_VAL(x, 26, 16) | FLD_VAL(y, 10, 0))

	FUNC4(FUNC2(plane, 0), CVAL(ct->rcr, ct->ry));
	FUNC4(FUNC2(plane, 1), CVAL(ct->gy,  ct->rcb));
	FUNC4(FUNC2(plane, 2), CVAL(ct->gcb, ct->gcr));
	FUNC4(FUNC2(plane, 3), CVAL(ct->bcr, ct->by));
	FUNC4(FUNC2(plane, 4), CVAL(0, ct->bcb));

	FUNC3(FUNC1(plane), ct->full_range, 11, 11);

#undef CVAL
}