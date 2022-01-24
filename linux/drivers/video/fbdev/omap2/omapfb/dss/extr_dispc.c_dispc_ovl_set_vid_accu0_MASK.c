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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FEAT_REG_HORIZONTALACCU ; 
 int /*<<< orphan*/  FEAT_REG_VERTICALACCU ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(enum omap_plane plane, int haccu, int vaccu)
{
	u32 val;
	u8 hor_start, hor_end, vert_start, vert_end;

	FUNC3(FEAT_REG_HORIZONTALACCU, &hor_start, &hor_end);
	FUNC3(FEAT_REG_VERTICALACCU, &vert_start, &vert_end);

	val = FUNC1(vaccu, vert_start, vert_end) |
			FUNC1(haccu, hor_start, hor_end);

	FUNC2(FUNC0(plane), val);
}