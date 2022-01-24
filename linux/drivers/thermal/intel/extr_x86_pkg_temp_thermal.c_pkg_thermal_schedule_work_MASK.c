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
struct delayed_work {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  notify_delay_ms ; 
 int /*<<< orphan*/  FUNC1 (int,struct delayed_work*,unsigned long) ; 

__attribute__((used)) static void FUNC2(int cpu, struct delayed_work *work)
{
	unsigned long ms = FUNC0(notify_delay_ms);

	FUNC1(cpu, work, ms);
}