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
struct rfkill {int dummy; } ;
struct TYPE_2__ {scalar_t__ ec_read_only; } ;

/* Variables and functions */
 TYPE_1__* quirks ; 
 int FUNC0 (struct rfkill*,int) ; 
 int FUNC1 (struct rfkill*,int) ; 

__attribute__((used)) static bool FUNC2(struct rfkill *rfkill, bool blocked)
{
	if (quirks->ec_read_only)
		return FUNC0(rfkill, blocked);
	else
		return FUNC1(rfkill, blocked);
}