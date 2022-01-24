#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tb {TYPE_1__* root_switch; int /*<<< orphan*/  dev; } ;
struct icm {int /*<<< orphan*/  (* set_uuid ) (struct tb*) ;int /*<<< orphan*/  rpm; int /*<<< orphan*/  can_upgrade_nvm; scalar_t__ safe_mode; } ;
struct TYPE_7__ {int no_nvm_upgrade; int /*<<< orphan*/  rpm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb*) ; 
 struct icm* FUNC3 (struct tb*) ; 
 int FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (struct tb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct tb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct tb *tb)
{
	struct icm *icm = FUNC3(tb);
	int ret;

	if (icm->safe_mode)
		tb->root_switch = FUNC6(tb, &tb->dev, 0);
	else
		tb->root_switch = FUNC5(tb, &tb->dev, 0);
	if (FUNC0(tb->root_switch))
		return FUNC1(tb->root_switch);

	tb->root_switch->no_nvm_upgrade = !icm->can_upgrade_nvm;
	tb->root_switch->rpm = icm->rpm;

	if (icm->set_uuid)
		icm->set_uuid(tb);

	ret = FUNC4(tb->root_switch);
	if (ret) {
		FUNC7(tb->root_switch);
		tb->root_switch = NULL;
	}

	return ret;
}