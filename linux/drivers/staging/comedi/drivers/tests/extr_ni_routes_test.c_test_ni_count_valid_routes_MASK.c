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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ni_route_tables const*) ; 
 TYPE_1__ private ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

void FUNC3(void)
{
	const struct ni_route_tables *T = &private.routing_tables;

	FUNC0();
	FUNC2(FUNC1(T) == 57, "count all valid routes\n");
}