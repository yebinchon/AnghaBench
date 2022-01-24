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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dentry*,struct inode*,char const**,int*,scalar_t__*,int*,int) ; 
 int FUNC1 (struct inode*,char const**,int*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*,...) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(struct inode *rinode, struct dentry *rdentry,
				  struct inode *rdiri, const char *rpath,
				  u64 rino, const char **ppath, int *pathlen,
				  u64 *ino, bool *freepath, bool parent_locked)
{
	int r = 0;

	if (rinode) {
		r = FUNC1(rinode, ppath, pathlen, ino, freepath);
		FUNC4(" inode %p %llx.%llx\n", rinode, FUNC2(rinode),
		     FUNC3(rinode));
	} else if (rdentry) {
		r = FUNC0(rdentry, rdiri, ppath, pathlen, ino,
					freepath, parent_locked);
		FUNC4(" dentry %p %llx/%.*s\n", rdentry, *ino, *pathlen,
		     *ppath);
	} else if (rpath || rino) {
		*ino = rino;
		*ppath = rpath;
		*pathlen = rpath ? FUNC5(rpath) : 0;
		FUNC4(" path %.*s\n", *pathlen, rpath);
	}

	return r;
}