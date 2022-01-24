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
struct TYPE_2__ {int /*<<< orphan*/  fck; int /*<<< orphan*/  bus_pick_width; int /*<<< orphan*/  bus_pick_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOSSI_INIT1_REG ; 
 int /*<<< orphan*/  WR_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ sossi ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(const void *data, unsigned int len)
{
	FUNC2(sossi.fck);
	FUNC5(WR_ACCESS);
	FUNC0(sossi.bus_pick_count, sossi.bus_pick_width);
	/* CMD#/DATA */
	FUNC6(SOSSI_INIT1_REG, 1 << 18);
	FUNC4(len);
	FUNC7();
	FUNC3(data, len);
	FUNC8();
	FUNC9();
	FUNC1(sossi.fck);
}