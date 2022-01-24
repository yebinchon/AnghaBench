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
typedef  int u32 ;
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 
 int OMAP_DSS_GFX ; 
 int OMAP_DSS_WB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(enum omap_plane plane, int width,
		int height)
{
	u32 val = FUNC2(height - 1, 26, 16) | FUNC2(width - 1, 10, 0);

	if (plane == OMAP_DSS_GFX || plane == OMAP_DSS_WB)
		FUNC3(FUNC1(plane), val);
	else
		FUNC3(FUNC0(plane), val);
}