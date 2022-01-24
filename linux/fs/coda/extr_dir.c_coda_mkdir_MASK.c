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
struct coda_vattr {int /*<<< orphan*/  va_mode; } ;
struct CodaFid {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,struct CodaFid*,struct coda_vattr*) ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct inode*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,struct CodaFid*,struct coda_vattr*) ; 

__attribute__((used)) static int FUNC11(struct inode *dir, struct dentry *de, umode_t mode)
{
	struct inode *inode;
	struct coda_vattr attrs;
	const char *name = de->d_name.name;
	int len = de->d_name.len;
	int error;
	struct CodaFid newfid;

	if (FUNC9(dir) && FUNC6(name, len))
		return -EPERM;

	attrs.va_mode = mode;
	error = FUNC10(dir->i_sb, FUNC4(dir), 
			       name, len, &newfid, &attrs);
	if (error)
		goto err_out;
         
	inode = FUNC5(dir->i_sb, &newfid, &attrs);
	if (FUNC0(inode)) {
		error = FUNC1(inode);
		goto err_out;
	}

	/* invalidate the directory cnode's attributes */
	FUNC2(dir);
	FUNC3(dir);
	FUNC8(de, inode);
	return 0;
err_out:
	FUNC7(de);
	return error;
}