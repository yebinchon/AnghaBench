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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct coda_vattr {int dummy; } ;
struct CodaFid {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct CodaFid*,struct coda_vattr*) ; 
 scalar_t__ FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct CodaFid*,struct coda_vattr*) ; 

__attribute__((used)) static int FUNC10(struct inode *dir, struct dentry *de, umode_t mode, bool excl)
{
	int error;
	const char *name=de->d_name.name;
	int length=de->d_name.len;
	struct inode *inode;
	struct CodaFid newfid;
	struct coda_vattr attrs;

	if (FUNC8(dir) && FUNC5(name, length))
		return -EPERM;

	error = FUNC9(dir->i_sb, FUNC3(dir), name, length, 
				0, mode, &newfid, &attrs);
	if (error)
		goto err_out;

	inode = FUNC4(dir->i_sb, &newfid, &attrs);
	if (FUNC0(inode)) {
		error = FUNC1(inode);
		goto err_out;
	}

	/* invalidate the directory cnode's attributes */
	FUNC2(dir);
	FUNC7(de, inode);
	return 0;
err_out:
	FUNC6(de);
	return error;
}