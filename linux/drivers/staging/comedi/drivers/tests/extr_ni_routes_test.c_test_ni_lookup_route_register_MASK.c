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
struct ni_route_tables {int dummy; } ;
struct TYPE_2__ {struct ni_route_tables routing_tables; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NI_RGOUT0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  brd0_src0 ; 
 int /*<<< orphan*/  brd0_src1 ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ni_route_tables const*) ; 
 TYPE_1__ private ; 
 int /*<<< orphan*/  rgout0_src0 ; 
 int /*<<< orphan*/  rgout0_src1 ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

void FUNC6(void)
{
	const struct ni_route_tables *T = &private.routing_tables;

	FUNC3();
	FUNC5(FUNC4(FUNC1(0), FUNC1(0), T) == -EINVAL,
		 "check for bad route 0-->0\n");
	FUNC5(FUNC4(FUNC1(1), FUNC1(0), T) == 1,
		 "validate first destination\n");
	FUNC5(FUNC4(FUNC1(6), FUNC1(5), T) == 6,
		 "validate middle destination\n");
	FUNC5(FUNC4(FUNC1(8), FUNC1(9), T) == 8,
		 "validate last destination\n");
	FUNC5(FUNC4(FUNC1(10), FUNC1(9), T) == -EINVAL,
		 "lookup invalid destination\n");

	FUNC5(FUNC4(rgout0_src0, FUNC2(0), T) ==
		 -EINVAL,
		 "rgout0_src0: no direct lookup of indirect route\n");
	FUNC5(FUNC4(rgout0_src0, NI_RGOUT0, T) == 0,
		 "rgout0_src0: lookup indirect route register\n");
	FUNC5(FUNC4(rgout0_src1, FUNC2(2), T) ==
		 -EINVAL,
		 "rgout0_src1: no direct lookup of indirect route\n");
	FUNC5(FUNC4(rgout0_src1, NI_RGOUT0, T) == 1,
		 "rgout0_src1: lookup indirect route register\n");

	FUNC5(FUNC4(brd0_src0, FUNC2(4), T) ==
		 -EINVAL,
		 "brd0_src0: no direct lookup of indirect route\n");
	FUNC5(FUNC4(brd0_src0, FUNC0(0), T) == 0,
		 "brd0_src0: lookup indirect route register\n");
	FUNC5(FUNC4(brd0_src1, FUNC2(4), T) ==
		 -EINVAL,
		 "brd0_src1: no direct lookup of indirect route\n");
	FUNC5(FUNC4(brd0_src1, FUNC0(0), T) == 1,
		 "brd0_src1: lookup indirect route register\n");
}