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
struct tb_cm {int hotplug_active; } ;
struct tb {int /*<<< orphan*/  root_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb*,char*) ; 
 struct tb_cm* FUNC1 (struct tb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tb *tb)
{
	struct tb_cm *tcm = FUNC1(tb);

	FUNC0(tb, "suspending...\n");
	FUNC2(tb->root_switch);
	tcm->hotplug_active = false; /* signal tb_handle_hotplug to quit */
	FUNC0(tb, "suspend finished\n");

	return 0;
}