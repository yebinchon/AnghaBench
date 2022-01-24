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
struct fbcon_ops {scalar_t__ cur_blink_jiffies; int /*<<< orphan*/  cursor_timer; struct fb_info* info; } ;
struct fb_info {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  cursor_timer ; 
 struct fbcon_ops* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct fbcon_ops* ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct fbcon_ops *ops = FUNC0(ops, t, cursor_timer);
	struct fb_info *info = ops->info;

	FUNC2(system_power_efficient_wq, &info->queue);
	FUNC1(&ops->cursor_timer, jiffies + ops->cur_blink_jiffies);
}