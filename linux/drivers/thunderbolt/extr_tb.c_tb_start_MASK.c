#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tb_cm {int hotplug_active; } ;
struct tb {TYPE_1__* root_switch; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int no_nvm_upgrade; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct tb_cm* FUNC4 (struct tb*) ; 
 int /*<<< orphan*/  tb_scan_finalize_switch ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (struct tb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct tb *tb)
{
	struct tb_cm *tcm = FUNC4(tb);
	int ret;

	tb->root_switch = FUNC7(tb, &tb->dev, 0);
	if (FUNC0(tb->root_switch))
		return FUNC1(tb->root_switch);

	/*
	 * ICM firmware upgrade needs running firmware and in native
	 * mode that is not available so disable firmware upgrade of the
	 * root switch.
	 */
	tb->root_switch->no_nvm_upgrade = true;

	ret = FUNC8(tb->root_switch);
	if (ret) {
		FUNC9(tb->root_switch);
		return ret;
	}

	/* Announce the switch to the world */
	ret = FUNC6(tb->root_switch);
	if (ret) {
		FUNC9(tb->root_switch);
		return ret;
	}

	/* Full scan to discover devices added before the driver was loaded. */
	FUNC5(tb->root_switch);
	/* Find out tunnels created by the boot firmware */
	FUNC3(tb->root_switch);
	/* Make the discovered switches available to the userspace */
	FUNC2(&tb->root_switch->dev, NULL,
			      tb_scan_finalize_switch);

	/* Allow tb_handle_hotplug to progress events */
	tcm->hotplug_active = true;
	return 0;
}