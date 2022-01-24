#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int /*<<< orphan*/  acl_index; struct se_portal_group* se_tpg; int /*<<< orphan*/  initiatorname; int /*<<< orphan*/  acl_pr_ref_count; int /*<<< orphan*/  lun_entry_mutex; int /*<<< orphan*/  nacl_sess_lock; int /*<<< orphan*/  acl_free_comp; int /*<<< orphan*/  acl_kref; int /*<<< orphan*/  lun_entry_hlist; int /*<<< orphan*/  acl_sess_list; int /*<<< orphan*/  acl_list; } ;
struct TYPE_2__ {int (* tpg_get_default_depth ) (struct se_portal_group*) ;int /*<<< orphan*/  (* set_default_node_attributes ) (struct se_node_acl*) ;int /*<<< orphan*/  node_acl_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCSI_AUTH_INTR_INDEX ; 
 int /*<<< orphan*/  TRANSPORT_IQN_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct se_node_acl* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC12 (struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC13 (struct se_portal_group*,struct se_node_acl*,int) ; 

__attribute__((used)) static struct se_node_acl *FUNC14(struct se_portal_group *tpg,
		const unsigned char *initiatorname)
{
	struct se_node_acl *acl;
	u32 queue_depth;

	acl = FUNC5(FUNC6(sizeof(*acl), tpg->se_tpg_tfo->node_acl_size),
			GFP_KERNEL);
	if (!acl)
		return NULL;

	FUNC1(&acl->acl_list);
	FUNC1(&acl->acl_sess_list);
	FUNC0(&acl->lun_entry_hlist);
	FUNC4(&acl->acl_kref);
	FUNC3(&acl->acl_free_comp);
	FUNC10(&acl->nacl_sess_lock);
	FUNC7(&acl->lun_entry_mutex);
	FUNC2(&acl->acl_pr_ref_count, 0);

	if (tpg->se_tpg_tfo->tpg_get_default_depth)
		queue_depth = tpg->se_tpg_tfo->tpg_get_default_depth(tpg);
	else
		queue_depth = 1;
	FUNC13(tpg, acl, queue_depth);

	FUNC9(acl->initiatorname, TRANSPORT_IQN_LEN, "%s", initiatorname);
	acl->se_tpg = tpg;
	acl->acl_index = FUNC8(SCSI_AUTH_INTR_INDEX);

	tpg->se_tpg_tfo->set_default_node_attributes(acl);

	return acl;
}