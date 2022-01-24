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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct tb_hotplug_event {int unplug; int /*<<< orphan*/  work; int /*<<< orphan*/  port; int /*<<< orphan*/  route; struct tb* tb; } ;
struct tb {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tb_hotplug_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tb_handle_hotplug ; 

__attribute__((used)) static void FUNC3(struct tb *tb, u64 route, u8 port, bool unplug)
{
	struct tb_hotplug_event *ev;

	ev = FUNC1(sizeof(*ev), GFP_KERNEL);
	if (!ev)
		return;

	ev->tb = tb;
	ev->route = route;
	ev->port = port;
	ev->unplug = unplug;
	FUNC0(&ev->work, tb_handle_hotplug);
	FUNC2(tb->wq, &ev->work);
}