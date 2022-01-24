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
struct name_snapshot {int /*<<< orphan*/  name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct dentry*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 scalar_t__ FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dentry*) ; 
 struct dentry* FUNC11 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC12 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct name_snapshot*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct name_snapshot*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC17 (struct dentry*,struct dentry*) ; 

struct dentry *FUNC18(struct dentry *old_dir, struct dentry *old_dentry,
		struct dentry *new_dir, const char *new_name)
{
	int error;
	struct dentry *dentry = NULL, *trap;
	struct name_snapshot old_name;

	if (FUNC1(old_dir))
		return old_dir;
	if (FUNC1(new_dir))
		return new_dir;
	if (FUNC2(old_dentry))
		return old_dentry;

	trap = FUNC11(new_dir, old_dir);
	/* Source or destination directories don't exist? */
	if (FUNC7(old_dir) || FUNC7(new_dir))
		goto exit;
	/* Source does not exist, cyclic rename, or mountpoint? */
	if (FUNC7(old_dentry) || old_dentry == trap ||
	    FUNC5(old_dentry))
		goto exit;
	dentry = FUNC12(new_name, new_dir, FUNC15(new_name));
	/* Lookup failed, cyclic rename or target exists? */
	if (FUNC1(dentry) || dentry == trap || FUNC8(dentry))
		goto exit;

	FUNC16(&old_name, old_dentry);

	error = FUNC14(FUNC3(old_dir), old_dentry, FUNC3(new_dir),
			      dentry, 0);
	if (error) {
		FUNC13(&old_name);
		goto exit;
	}
	FUNC6(old_dentry, dentry);
	FUNC10(FUNC3(old_dir), FUNC3(new_dir), &old_name.name,
		FUNC4(old_dentry),
		NULL, old_dentry);
	FUNC13(&old_name);
	FUNC17(new_dir, old_dir);
	FUNC9(dentry);
	return old_dentry;
exit:
	if (dentry && !FUNC1(dentry))
		FUNC9(dentry);
	FUNC17(new_dir, old_dir);
	if (FUNC1(dentry))
		return dentry;
	return FUNC0(-EINVAL);
}