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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_VATTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char const*,char const*) ; 

__attribute__((used)) static int FUNC9(struct inode *old_dir, struct dentry *old_dentry,
		       struct inode *new_dir, struct dentry *new_dentry,
		       unsigned int flags)
{
	const char *old_name = old_dentry->d_name.name;
	const char *new_name = new_dentry->d_name.name;
	int old_length = old_dentry->d_name.len;
	int new_length = new_dentry->d_name.len;
	int error;

	if (flags)
		return -EINVAL;

	error = FUNC8(old_dir->i_sb, FUNC4(old_dir),
			     FUNC4(new_dir), old_length, new_length,
			     (const char *) old_name, (const char *)new_name);
	if (!error) {
		if (FUNC7(new_dentry)) {
			if (FUNC6(new_dentry)) {
				FUNC0(old_dir);
				FUNC1(new_dir);
			}
			FUNC2(old_dir);
			FUNC2(new_dir);
			FUNC3(FUNC5(new_dentry), C_VATTR);
		} else {
			FUNC3(old_dir, C_VATTR);
			FUNC3(new_dir, C_VATTR);
		}
	}
	return error;
}