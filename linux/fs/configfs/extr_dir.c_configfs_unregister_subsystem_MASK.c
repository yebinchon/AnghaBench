#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dentry {struct dentry* d_parent; struct configfs_dirent* d_fsdata; TYPE_1__* d_sb; } ;
struct TYPE_9__ {struct dentry* ci_dentry; } ;
struct config_group {TYPE_6__ cg_item; } ;
struct configfs_subsystem {struct config_group su_group; } ;
struct configfs_fragment {int frag_dead; int /*<<< orphan*/  frag_sem; } ;
struct configfs_dirent {struct configfs_fragment* s_frag; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_flags; } ;
struct TYPE_7__ {struct dentry* s_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 scalar_t__ FUNC1 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  configfs_symlink_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 TYPE_2__* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct config_group*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

void FUNC18(struct configfs_subsystem *subsys)
{
	struct config_group *group = &subsys->su_group;
	struct dentry *dentry = group->cg_item.ci_dentry;
	struct dentry *root = dentry->d_sb->s_root;
	struct configfs_dirent *sd = dentry->d_fsdata;
	struct configfs_fragment *frag = sd->s_frag;

	if (dentry->d_parent != root) {
		FUNC13("Tried to unregister non-subsystem!\n");
		return;
	}

	FUNC6(&frag->frag_sem);
	frag->frag_dead = true;
	FUNC17(&frag->frag_sem);

	FUNC9(FUNC4(root),
			  I_MUTEX_PARENT);
	FUNC9(FUNC4(dentry), I_MUTEX_CHILD);
	FUNC11(&configfs_symlink_mutex);
	FUNC14(&configfs_dirent_lock);
	if (FUNC1(dentry, NULL)) {
		FUNC13("Tried to unregister non-empty subsystem!\n");
	}
	FUNC15(&configfs_dirent_lock);
	FUNC12(&configfs_symlink_mutex);
	FUNC0(&group->cg_item);
	FUNC4(dentry)->i_flags |= S_DEAD;
	FUNC5(dentry);
	FUNC8(FUNC4(root), dentry);
	FUNC10(FUNC4(dentry));

	FUNC3(dentry);

	FUNC10(FUNC4(root));

	FUNC7(dentry);

	FUNC16(group);
	FUNC2();
}