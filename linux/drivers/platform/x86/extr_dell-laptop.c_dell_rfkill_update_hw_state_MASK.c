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
struct rfkill {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rfkill*,int) ; 

__attribute__((used)) static void FUNC2(struct rfkill *rfkill, int radio,
					int status, int hwswitch)
{
	if (hwswitch & (FUNC0(radio - 1)))
		FUNC1(rfkill, !(status & FUNC0(16)));
}