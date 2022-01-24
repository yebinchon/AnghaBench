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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 char* FUNC3 (struct dentry*,int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry, struct inode *dir,
			     const char **ppath, int *ppathlen, u64 *pino,
			     bool *pfreepath, bool parent_locked)
{
	char *path;

	FUNC6();
	if (!dir)
		dir = FUNC5(dentry->d_parent);
	if (dir && parent_locked && FUNC4(dir) == CEPH_NOSNAP) {
		*pino = FUNC2(dir);
		FUNC7();
		*ppath = dentry->d_name.name;
		*ppathlen = dentry->d_name.len;
		return 0;
	}
	FUNC7();
	path = FUNC3(dentry, ppathlen, pino, 1);
	if (FUNC0(path))
		return FUNC1(path);
	*ppath = path;
	*pfreepath = true;
	return 0;
}