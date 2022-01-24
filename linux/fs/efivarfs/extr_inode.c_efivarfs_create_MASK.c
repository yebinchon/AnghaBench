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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {struct efivar_entry* i_private; int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {char* VariableName; int /*<<< orphan*/  VendorGuid; } ;
struct efivar_entry {TYPE_2__ var; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int EFI_VARIABLE_GUID_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int FUNC2 (struct efivar_entry*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  efivarfs_list ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct efivar_entry*) ; 
 struct efivar_entry* FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *dir, struct dentry *dentry,
			  umode_t mode, bool excl)
{
	struct inode *inode = NULL;
	struct efivar_entry *var;
	int namelen, i = 0, err = 0;
	bool is_removable = false;

	if (!FUNC5(dentry->d_name.name, dentry->d_name.len))
		return -EINVAL;

	var = FUNC9(sizeof(struct efivar_entry), GFP_KERNEL);
	if (!var)
		return -ENOMEM;

	/* length of the variable name itself: remove GUID and separator */
	namelen = dentry->d_name.len - EFI_VARIABLE_GUID_LEN - 1;

	err = FUNC6(dentry->d_name.name + namelen + 1, &var->var.VendorGuid);
	if (err)
		goto out;

	if (FUNC3(var->var.VendorGuid,
					 dentry->d_name.name, namelen))
		is_removable = true;

	inode = FUNC4(dir->i_sb, dir, mode, 0, is_removable);
	if (!inode) {
		err = -ENOMEM;
		goto out;
	}

	for (i = 0; i < namelen; i++)
		var->var.VariableName[i] = dentry->d_name.name[i];

	var->var.VariableName[i] = '\0';

	inode->i_private = var;

	err = FUNC2(var, &efivarfs_list);
	if (err)
		goto out;

	FUNC0(dentry, inode);
	FUNC1(dentry);
out:
	if (err) {
		FUNC8(var);
		if (inode)
			FUNC7(inode);
	}
	return err;
}