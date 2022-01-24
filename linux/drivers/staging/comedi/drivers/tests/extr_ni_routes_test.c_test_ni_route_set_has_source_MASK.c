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
struct TYPE_2__ {int /*<<< orphan*/ * routes; } ;

/* Variables and functions */
 TYPE_1__ DR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

void FUNC3(void)
{
	FUNC2(!FUNC1(&DR.routes[0], FUNC0(0)),
		 "check for bad source\n");
	FUNC2(FUNC1(&DR.routes[0], FUNC0(1)),
		 "find first source\n");
	FUNC2(FUNC1(&DR.routes[0], FUNC0(5)),
		 "find fifth source\n");
	FUNC2(FUNC1(&DR.routes[0], FUNC0(9)),
		 "find last source\n");
}