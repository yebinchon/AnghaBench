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
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_subsystem {int /*<<< orphan*/  su_mutex; } ;
struct configfs_fragment {int frag_dead; int /*<<< orphan*/  frag_sem; } ;
struct configfs_dirent {struct configfs_fragment* s_frag; } ;
struct TYPE_9__ {TYPE_1__* ci_parent; struct dentry* ci_dentry; } ;
struct config_group {TYPE_6__ cg_item; struct configfs_subsystem* cg_subsys; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_flags; } ;
struct TYPE_7__ {struct dentry* ci_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 TYPE_2__* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct config_group*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct config_group *group)
{
	struct configfs_subsystem *subsys = group->cg_subsys;
	struct dentry *dentry = group->cg_item.ci_dentry;
	struct dentry *parent = group->cg_item.ci_parent->ci_dentry;
	struct configfs_dirent *sd = dentry->d_fsdata;
	struct configfs_fragment *frag = sd->s_frag;

	FUNC5(&frag->frag_sem);
	frag->frag_dead = true;
	FUNC15(&frag->frag_sem);

	FUNC8(FUNC3(parent), I_MUTEX_PARENT);
	FUNC12(&configfs_dirent_lock);
	FUNC1(dentry, NULL);
	FUNC13(&configfs_dirent_lock);

	FUNC0(&group->cg_item);
	FUNC3(dentry)->i_flags |= S_DEAD;
	FUNC4(dentry);
	FUNC7(FUNC3(parent), dentry);
	FUNC2(dentry);
	FUNC9(FUNC3(parent));

	FUNC6(dentry);

	FUNC10(&subsys->su_mutex);
	FUNC14(group);
	FUNC11(&subsys->su_mutex);
}