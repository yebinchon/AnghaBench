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
struct tb_switch {int dummy; } ;
struct nvm_auth_status {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 struct nvm_auth_status* FUNC0 (struct tb_switch const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvm_auth_status_lock ; 

__attribute__((used)) static void FUNC3(const struct tb_switch *sw, u32 *status)
{
	struct nvm_auth_status *st;

	FUNC1(&nvm_auth_status_lock);
	st = FUNC0(sw);
	FUNC2(&nvm_auth_status_lock);

	*status = st ? st->status : 0;
}