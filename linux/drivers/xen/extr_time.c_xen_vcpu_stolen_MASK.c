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
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ RUNSTATE_runnable ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xen_runstate ; 

bool FUNC1(int vcpu)
{
	return FUNC0(xen_runstate, vcpu).state == RUNSTATE_runnable;
}