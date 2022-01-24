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
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,struct ni_route_tables const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,struct ni_route_tables const*,int) ; 
 TYPE_1__ private ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

void FUNC5(void)
{
	const struct ni_route_tables *T = &private.routing_tables;

	FUNC1();
	FUNC4(FUNC2(0, FUNC0(0), T) == -EINVAL,
		 "check bad direct trigger arg for first reg->dest\n");
	FUNC4(FUNC2(0, FUNC0(1), T) == 0,
		 "check direct trigger arg for first reg->dest\n");
	FUNC4(FUNC2(4, FUNC0(6), T) == 0,
		 "check direct trigger arg for middle reg->dest\n");
	FUNC4(FUNC2(9, FUNC0(8), T) == 0,
		 "check direct trigger arg for last reg->dest\n");

	FUNC4(FUNC3(-1, FUNC0(0), T, 1) == -EINVAL,
		 "check bad direct trigger arg for first reg->dest w/offs\n");
	FUNC4(FUNC3(0, FUNC0(1), T, 0) == 0,
		 "check direct trigger arg for first reg->dest w/offs\n");
	FUNC4(FUNC3(3, FUNC0(6), T, 1) == 0,
		 "check direct trigger arg for middle reg->dest w/offs\n");
	FUNC4(FUNC3(7, FUNC0(8), T, 2) == 0,
		 "check direct trigger arg for last reg->dest w/offs\n");

	FUNC4(FUNC2(FUNC0(0), FUNC0(0), T) == -EINVAL,
		 "check bad trigger arg for first src->dest\n");
	FUNC4(FUNC2(FUNC0(0), FUNC0(1), T) == 0,
		 "check trigger arg for first src->dest\n");
	FUNC4(FUNC2(FUNC0(5), FUNC0(6), T) == 0,
		 "check trigger arg for middle src->dest\n");
	FUNC4(FUNC2(FUNC0(8), FUNC0(9), T) == 0,
		 "check trigger arg for last src->dest\n");
}