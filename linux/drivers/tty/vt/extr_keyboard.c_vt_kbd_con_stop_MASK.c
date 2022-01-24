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
struct kbd_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_SCROLLOCK ; 
 struct kbd_struct* kbd_table ; 
 int /*<<< orphan*/  led_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kbd_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(int console)
{
	struct kbd_struct *kb = kbd_table + console;
	unsigned long flags;
	FUNC2(&led_lock, flags);
	FUNC1(kb, VC_SCROLLOCK);
	FUNC0();
	FUNC3(&led_lock, flags);
}