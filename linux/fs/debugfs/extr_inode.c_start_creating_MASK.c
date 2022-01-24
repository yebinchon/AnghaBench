#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_6__ {struct dentry* mnt_root; } ;

/* Variables and functions */
 int EEXIST ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  debug_fs_type ; 
 TYPE_2__* debugfs_mount ; 
 int /*<<< orphan*/  debugfs_mount_count ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

__attribute__((used)) static struct dentry *FUNC14(const char *name, struct dentry *parent)
{
	struct dentry *dentry;
	int error;

	FUNC9("creating file '%s'\n", name);

	if (FUNC1(parent))
		return parent;

	error = FUNC11(&debug_fs_type, &debugfs_mount,
			      &debugfs_mount_count);
	if (error) {
		FUNC10("Unable to pin filesystem for file '%s'\n", name);
		return FUNC0(error);
	}

	/* If the parent is not specified, we create it in the root.
	 * We need the root dentry to do this, which is in the super
	 * block. A pointer to that is in the struct vfsmount that we
	 * have around.
	 */
	if (!parent)
		parent = debugfs_mount->mnt_root;

	FUNC6(FUNC2(parent));
	dentry = FUNC8(name, parent, FUNC13(name));
	if (!FUNC1(dentry) && FUNC4(dentry)) {
		if (FUNC3(dentry))
			FUNC10("Directory '%s' with parent '%s' already present!\n",
			       name, parent->d_name.name);
		else
			FUNC10("File '%s' in directory '%s' already present!\n",
			       name, parent->d_name.name);
		FUNC5(dentry);
		dentry = FUNC0(-EEXIST);
	}

	if (FUNC1(dentry)) {
		FUNC7(FUNC2(parent));
		FUNC12(&debugfs_mount, &debugfs_mount_count);
	}

	return dentry;
}