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
typedef  int /*<<< orphan*/  u64 ;
struct se_portal_group {int dummy; } ;
struct se_node_acl {int /*<<< orphan*/  lun_entry_mutex; int /*<<< orphan*/  lun_entry_hlist; int /*<<< orphan*/  initiatorname; } ;
struct se_lun_acl {int /*<<< orphan*/  lun_deve_lock; int /*<<< orphan*/  lun_deve_list; } ;
struct se_lun {int /*<<< orphan*/  lun_deve_lock; int /*<<< orphan*/  lun_deve_list; } ;
struct se_dev_entry {int lun_access_ro; int /*<<< orphan*/  lun_link; int /*<<< orphan*/  link; int /*<<< orphan*/ * se_lun_acl; int /*<<< orphan*/ * se_lun; int /*<<< orphan*/  pr_comp; int /*<<< orphan*/  pr_kref; int /*<<< orphan*/  attach_count; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  mapped_lun; int /*<<< orphan*/  ua_list; int /*<<< orphan*/  ua_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct se_dev_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_dev_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct se_dev_entry* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct se_lun_acl*) ; 
 struct se_lun_acl* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct se_node_acl*,struct se_dev_entry*,int) ; 
 struct se_dev_entry* FUNC23 (struct se_node_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_pr_kref_release ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

int FUNC25(
	struct se_lun *lun,
	struct se_lun_acl *lun_acl,
	u64 mapped_lun,
	bool lun_access_ro,
	struct se_node_acl *nacl,
	struct se_portal_group *tpg)
{
	struct se_dev_entry *orig, *new;

	new = FUNC9(sizeof(*new), GFP_KERNEL);
	if (!new) {
		FUNC15("Unable to allocate se_dev_entry memory\n");
		return -ENOMEM;
	}

	FUNC20(&new->ua_lock);
	FUNC0(&new->ua_list);
	FUNC0(&new->lun_link);

	new->mapped_lun = mapped_lun;
	FUNC7(&new->pr_kref);
	FUNC4(&new->pr_comp);

	new->lun_access_ro = lun_access_ro;
	new->creation_time = FUNC1();
	new->attach_count++;

	FUNC13(&nacl->lun_entry_mutex);
	orig = FUNC23(nacl, mapped_lun);
	if (orig && orig->se_lun) {
		struct se_lun *orig_lun = FUNC18(orig->se_lun,
					FUNC12(&nacl->lun_entry_mutex));

		if (orig_lun != lun) {
			FUNC15("Existing orig->se_lun doesn't match new lun"
			       " for dynamic -> explicit NodeACL conversion:"
				" %s\n", nacl->initiatorname);
			FUNC14(&nacl->lun_entry_mutex);
			FUNC5(new);
			return -EINVAL;
		}
		if (orig->se_lun_acl != NULL) {
			FUNC16("Detected existing explicit"
				" se_lun_acl->se_lun_group reference for %s"
				" mapped_lun: %llu, failing\n",
				 nacl->initiatorname, mapped_lun);
			FUNC14(&nacl->lun_entry_mutex);
			FUNC5(new);
			return -EINVAL;
		}

		FUNC17(new->se_lun, lun);
		FUNC17(new->se_lun_acl, lun_acl);
		FUNC3(&orig->link);
		FUNC2(&new->link, &nacl->lun_entry_hlist);
		FUNC14(&nacl->lun_entry_mutex);

		FUNC19(&lun->lun_deve_lock);
		FUNC11(&orig->lun_link);
		FUNC10(&new->lun_link, &lun->lun_deve_list);
		FUNC21(&lun->lun_deve_lock);

		FUNC8(&orig->pr_kref, target_pr_kref_release);
		FUNC24(&orig->pr_comp);

		FUNC22(nacl, new, true);
		FUNC6(orig, rcu_head);
		return 0;
	}

	FUNC17(new->se_lun, lun);
	FUNC17(new->se_lun_acl, lun_acl);
	FUNC2(&new->link, &nacl->lun_entry_hlist);
	FUNC14(&nacl->lun_entry_mutex);

	FUNC19(&lun->lun_deve_lock);
	FUNC10(&new->lun_link, &lun->lun_deve_list);
	FUNC21(&lun->lun_deve_lock);

	FUNC22(nacl, new, true);
	return 0;
}