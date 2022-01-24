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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  open; int /*<<< orphan*/  next_heartbeat; } ;

/* Variables and functions */
 scalar_t__ WDT_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  nowayout ; 
 TYPE_1__ pikawdt_private ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_list *unused)
{
	if (FUNC3(jiffies, pikawdt_private.next_heartbeat) ||
			(!nowayout && !pikawdt_private.open)) {
		FUNC1();
		FUNC0(&pikawdt_private.timer, jiffies + WDT_TIMEOUT);
	} else
		FUNC2("I will reset your machine !\n");
}