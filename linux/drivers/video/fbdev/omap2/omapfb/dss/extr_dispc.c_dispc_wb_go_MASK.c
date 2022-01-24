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
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_CONTROL2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int OMAP_DSS_WB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 

void FUNC4(void)
{
	enum omap_plane plane = OMAP_DSS_WB;
	bool enable, go;

	enable = FUNC3(FUNC0(plane), 0, 0) == 1;

	if (!enable)
		return;

	go = FUNC3(DISPC_CONTROL2, 6, 6) == 1;
	if (go) {
		FUNC1("GO bit not down for WB\n");
		return;
	}

	FUNC2(DISPC_CONTROL2, 1, 6, 6);
}