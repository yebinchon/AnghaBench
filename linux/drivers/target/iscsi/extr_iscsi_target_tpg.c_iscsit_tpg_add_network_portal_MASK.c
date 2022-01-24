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
struct sockaddr_storage {int dummy; } ;
struct iscsi_tpg_np {int /*<<< orphan*/  tpg_np_parent_lock; int /*<<< orphan*/  tpg_np_parent_list; int /*<<< orphan*/  tpg_np_child_list; struct iscsi_tpg_np* tpg_np_parent; int /*<<< orphan*/  tpg_np_list; struct iscsi_portal_group* tpg; struct iscsi_np* tpg_np; int /*<<< orphan*/  tpg_np_kref; int /*<<< orphan*/  tpg_np_comp; } ;
struct iscsi_portal_group {int /*<<< orphan*/  tpgt; TYPE_2__* tpg_tiqn; int /*<<< orphan*/  tpg_np_lock; int /*<<< orphan*/  num_tpg_nps; int /*<<< orphan*/  tpg_gnp_list; } ;
struct iscsi_np {TYPE_1__* np_transport; int /*<<< orphan*/  np_sockaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  tiqn; int /*<<< orphan*/  tiqn_num_tpg_nps; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct iscsi_tpg_np* FUNC0 (struct iscsi_np*) ; 
 struct iscsi_tpg_np* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct iscsi_np*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct iscsi_np* FUNC5 (struct sockaddr_storage*,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_tpg_np*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct iscsi_tpg_np* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

struct iscsi_tpg_np *FUNC16(
	struct iscsi_portal_group *tpg,
	struct sockaddr_storage *sockaddr,
	struct iscsi_tpg_np *tpg_np_parent,
	int network_transport)
{
	struct iscsi_np *np;
	struct iscsi_tpg_np *tpg_np;

	if (!tpg_np_parent) {
		if (FUNC6(tpg->tpg_tiqn, sockaddr,
				network_transport)) {
			FUNC12("Network Portal: %pISc already exists on a"
				" different TPG on %s\n", sockaddr,
				tpg->tpg_tiqn->tiqn);
			return FUNC1(-EEXIST);
		}
	}

	tpg_np = FUNC9(sizeof(struct iscsi_tpg_np), GFP_KERNEL);
	if (!tpg_np) {
		FUNC12("Unable to allocate memory for"
				" struct iscsi_tpg_np.\n");
		return FUNC1(-ENOMEM);
	}

	np = FUNC5(sockaddr, network_transport);
	if (FUNC3(np)) {
		FUNC7(tpg_np);
		return FUNC0(np);
	}

	FUNC2(&tpg_np->tpg_np_list);
	FUNC2(&tpg_np->tpg_np_child_list);
	FUNC2(&tpg_np->tpg_np_parent_list);
	FUNC14(&tpg_np->tpg_np_parent_lock);
	FUNC4(&tpg_np->tpg_np_comp);
	FUNC8(&tpg_np->tpg_np_kref);
	tpg_np->tpg_np		= np;
	tpg_np->tpg		= tpg;

	FUNC13(&tpg->tpg_np_lock);
	FUNC10(&tpg_np->tpg_np_list, &tpg->tpg_gnp_list);
	tpg->num_tpg_nps++;
	if (tpg->tpg_tiqn)
		tpg->tpg_tiqn->tiqn_num_tpg_nps++;
	FUNC15(&tpg->tpg_np_lock);

	if (tpg_np_parent) {
		tpg_np->tpg_np_parent = tpg_np_parent;
		FUNC13(&tpg_np_parent->tpg_np_parent_lock);
		FUNC10(&tpg_np->tpg_np_child_list,
			&tpg_np_parent->tpg_np_parent_list);
		FUNC15(&tpg_np_parent->tpg_np_parent_lock);
	}

	FUNC11("CORE[%s] - Added Network Portal: %pISpc,%hu on %s\n",
		tpg->tpg_tiqn->tiqn, &np->np_sockaddr, tpg->tpgt,
		np->np_transport->name);

	return tpg_np;
}