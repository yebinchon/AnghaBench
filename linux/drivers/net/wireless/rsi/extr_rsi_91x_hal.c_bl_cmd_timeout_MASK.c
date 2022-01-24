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
struct rsi_hw {int blcmd_timer_expired; int /*<<< orphan*/  bl_cmd_timer; } ;

/* Variables and functions */
 struct rsi_hw* adapter ; 
 int /*<<< orphan*/  bl_cmd_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rsi_hw* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct rsi_hw *adapter = FUNC1(adapter, t, bl_cmd_timer);

	adapter->blcmd_timer_expired = true;
	FUNC0(&adapter->bl_cmd_timer);
}