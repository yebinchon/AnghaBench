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

/* Variables and functions */
 int /*<<< orphan*/  DISPC_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FEAT_FIFO_MERGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(bool enable)
{
	if (!FUNC3(FEAT_FIFO_MERGE)) {
		FUNC2(enable);
		return;
	}

	FUNC0("FIFO merge %s\n", enable ? "enabled" : "disabled");
	FUNC1(DISPC_CONFIG, enable ? 1 : 0, 14, 14);
}