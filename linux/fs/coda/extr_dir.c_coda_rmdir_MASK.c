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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *de)
{
	const char *name = de->d_name.name;
	int len = de->d_name.len;
	int error;

	error = FUNC6(dir->i_sb, FUNC3(dir), name, len);
	if (!error) {
		/* VFS may delete the child */
		if (FUNC5(de))
			FUNC0(FUNC4(de));

		/* fix the link count of the parent */
		FUNC1(dir);
		FUNC2(dir);
	}
	return error;
}