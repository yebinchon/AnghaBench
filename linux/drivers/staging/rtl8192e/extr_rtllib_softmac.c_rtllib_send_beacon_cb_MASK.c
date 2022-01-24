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
struct timer_list {int dummy; } ;
struct rtllib_device {int /*<<< orphan*/  beacon_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  beacon_timer ; 
 struct rtllib_device* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct rtllib_device* ieee ; 
 int /*<<< orphan*/  FUNC1 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct rtllib_device *ieee =
		FUNC0(ieee, t, beacon_timer);
	unsigned long flags;

	FUNC2(&ieee->beacon_lock, flags);
	FUNC1(ieee);
	FUNC3(&ieee->beacon_lock, flags);
}