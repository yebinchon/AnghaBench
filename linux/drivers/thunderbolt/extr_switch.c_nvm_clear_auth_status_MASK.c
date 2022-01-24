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
struct tb_switch {int dummy; } ;
struct nvm_auth_status {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 struct nvm_auth_status* FUNC0 (struct tb_switch const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvm_auth_status*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvm_auth_status_lock ; 

__attribute__((used)) static void FUNC5(const struct tb_switch *sw)
{
	struct nvm_auth_status *st;

	FUNC3(&nvm_auth_status_lock);
	st = FUNC0(sw);
	if (st) {
		FUNC2(&st->list);
		FUNC1(st);
	}
	FUNC4(&nvm_auth_status_lock);
}