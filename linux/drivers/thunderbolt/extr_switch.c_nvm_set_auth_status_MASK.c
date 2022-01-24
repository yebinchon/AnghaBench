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
typedef  int /*<<< orphan*/  u32 ;
struct tb_switch {int /*<<< orphan*/  uuid; } ;
struct nvm_auth_status {int /*<<< orphan*/  status; int /*<<< orphan*/  list; int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 struct nvm_auth_status* FUNC2 (struct tb_switch const*) ; 
 struct nvm_auth_status* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvm_auth_status_cache ; 
 int /*<<< orphan*/  nvm_auth_status_lock ; 

__attribute__((used)) static void FUNC8(const struct tb_switch *sw, u32 status)
{
	struct nvm_auth_status *st;

	if (FUNC1(!sw->uuid))
		return;

	FUNC6(&nvm_auth_status_lock);
	st = FUNC2(sw);

	if (!st) {
		st = FUNC3(sizeof(*st), GFP_KERNEL);
		if (!st)
			goto unlock;

		FUNC5(&st->uuid, sw->uuid, sizeof(st->uuid));
		FUNC0(&st->list);
		FUNC4(&st->list, &nvm_auth_status_cache);
	}

	st->status = status;
unlock:
	FUNC7(&nvm_auth_status_lock);
}