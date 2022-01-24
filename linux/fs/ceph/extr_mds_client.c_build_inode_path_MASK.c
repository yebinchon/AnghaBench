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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 char* FUNC3 (struct dentry*,int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 struct dentry* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
			    const char **ppath, int *ppathlen, u64 *pino,
			    bool *pfreepath)
{
	struct dentry *dentry;
	char *path;

	if (FUNC4(inode) == CEPH_NOSNAP) {
		*pino = FUNC2(inode);
		*ppathlen = 0;
		return 0;
	}
	dentry = FUNC5(inode);
	path = FUNC3(dentry, ppathlen, pino, 1);
	FUNC6(dentry);
	if (FUNC0(path))
		return FUNC1(path);
	*ppath = path;
	*pfreepath = true;
	return 0;
}