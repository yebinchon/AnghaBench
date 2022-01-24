#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iscsi_tpg_np {int /*<<< orphan*/ * tpg; int /*<<< orphan*/ * tpg_np; } ;
struct iscsi_portal_group {int /*<<< orphan*/  tpgt; TYPE_1__* tpg_tiqn; } ;
struct iscsi_np {TYPE_2__* np_transport; int /*<<< orphan*/  np_sockaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  tiqn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_tpg_np*,struct iscsi_portal_group*,int) ; 
 int FUNC1 (struct iscsi_np*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_tpg_np*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
	struct iscsi_tpg_np *tpg_np,
	struct iscsi_portal_group *tpg,
	struct iscsi_np *np)
{
	FUNC0(tpg_np, tpg, true);

	FUNC3("CORE[%s] - Removed Network Portal: %pISpc,%hu on %s\n",
		tpg->tpg_tiqn->tiqn, &np->np_sockaddr, tpg->tpgt,
		np->np_transport->name);

	tpg_np->tpg_np = NULL;
	tpg_np->tpg = NULL;
	FUNC2(tpg_np);
	/*
	 * iscsit_del_np() will shutdown struct iscsi_np when last TPG reference is released.
	 */
	return FUNC1(np);
}