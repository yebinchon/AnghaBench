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
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct ni_route_tables const*,int,unsigned int*) ; 
 TYPE_1__ private ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void FUNC4(void)
{
	const struct ni_route_tables *T = &private.routing_tables;
	unsigned int pair_data[2];

	FUNC1();
	FUNC3(FUNC2(T, 0, NULL) == 57,
		 "count all valid routes through ni_get_valid_routes\n");

	FUNC3(FUNC2(T, 1, pair_data) == 1,
		 "copied first valid route from ni_get_valid_routes\n");
	FUNC3(pair_data[0] == FUNC0(1),
		 "source of first valid pair from ni_get_valid_routes\n");
	FUNC3(pair_data[1] == FUNC0(0),
		 "destination of first valid pair from ni_get_valid_routes\n");
}