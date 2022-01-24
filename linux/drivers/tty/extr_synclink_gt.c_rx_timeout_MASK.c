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
struct slgt_info {int /*<<< orphan*/  task; int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_bh; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct slgt_info* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct slgt_info* info ; 
 int /*<<< orphan*/  rx_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct slgt_info *info = FUNC2(info, t, rx_timer);
	unsigned long flags;

	FUNC0(("%s rx_timeout\n", info->device_name));
	FUNC3(&info->lock, flags);
	info->pending_bh |= BH_RECEIVE;
	FUNC4(&info->lock, flags);
	FUNC1(&info->task);
}