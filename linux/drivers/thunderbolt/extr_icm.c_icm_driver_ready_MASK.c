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
struct tb {scalar_t__ nboot_acl; int /*<<< orphan*/  security_level; } ;
struct icm {scalar_t__ max_boot_acl; int /*<<< orphan*/  rpm; scalar_t__ safe_mode; } ;

/* Variables and functions */
 int FUNC0 (struct tb*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct tb*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb*,char*) ; 
 struct icm* FUNC3 (struct tb*) ; 

__attribute__((used)) static int FUNC4(struct tb *tb)
{
	struct icm *icm = FUNC3(tb);
	int ret;

	ret = FUNC1(tb);
	if (ret)
		return ret;

	if (icm->safe_mode) {
		FUNC2(tb, "Thunderbolt host controller is in safe mode.\n");
		FUNC2(tb, "You need to update NVM firmware of the controller before it can be used.\n");
		FUNC2(tb, "For latest updates check https://thunderbolttechnology.net/updates.\n");
		return 0;
	}

	ret = FUNC0(tb, &tb->security_level, &tb->nboot_acl,
				 &icm->rpm);
	if (ret)
		return ret;

	/*
	 * Make sure the number of supported preboot ACL matches what we
	 * expect or disable the whole feature.
	 */
	if (tb->nboot_acl > icm->max_boot_acl)
		tb->nboot_acl = 0;

	return 0;
}