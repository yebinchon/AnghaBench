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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ private ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct ni_route_tables const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void FUNC4(void)
{
	const struct ni_route_tables *T = &private.routing_tables;

	FUNC1();
	FUNC3(FUNC2(4, FUNC0(4), T) == false,
		 "check for bad source 4-->4\n");
	FUNC3(FUNC2(0, FUNC0(1), T) == true,
		 "find first source\n");
	FUNC3(FUNC2(4, FUNC0(6), T) == true,
		 "find middle source\n");
	FUNC3(FUNC2(9, FUNC0(8), T) == true,
		 "find last source");
}