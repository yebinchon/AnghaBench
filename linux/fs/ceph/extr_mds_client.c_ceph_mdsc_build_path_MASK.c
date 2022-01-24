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
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_parent; int /*<<< orphan*/  d_lock; TYPE_1__ d_name; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int PATH_MAX ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct inode* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 unsigned int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  rename_lock ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

char *FUNC17(struct dentry *dentry, int *plen, u64 *pbase,
			   int stop_on_nosnap)
{
	struct dentry *temp;
	char *path;
	int pos;
	unsigned seq;
	u64 base;

	if (!dentry)
		return FUNC0(-EINVAL);

	path = FUNC3();
	if (!path)
		return FUNC0(-ENOMEM);
retry:
	pos = PATH_MAX - 1;
	path[pos] = '\0';

	seq = FUNC13(&rename_lock);
	FUNC11();
	temp = dentry;
	for (;;) {
		struct inode *inode;

		FUNC15(&temp->d_lock);
		inode = FUNC7(temp);
		if (inode && FUNC5(inode) == CEPH_SNAPDIR) {
			FUNC8("build_path path+%d: %p SNAPDIR\n",
			     pos, temp);
		} else if (stop_on_nosnap && inode && dentry != temp &&
			   FUNC5(inode) == CEPH_NOSNAP) {
			FUNC16(&temp->d_lock);
			pos++; /* get rid of any prepended '/' */
			break;
		} else {
			pos -= temp->d_name.len;
			if (pos < 0) {
				FUNC16(&temp->d_lock);
				break;
			}
			FUNC9(path + pos, temp->d_name.name, temp->d_name.len);
		}
		FUNC16(&temp->d_lock);
		temp = FUNC2(temp->d_parent);

		/* Are we at the root? */
		if (FUNC1(temp))
			break;

		/* Are we out of buffer? */
		if (--pos < 0)
			break;

		path[pos] = '/';
	}
	base = FUNC4(FUNC7(temp));
	FUNC12();
	if (pos < 0 || FUNC14(&rename_lock, seq)) {
		FUNC10("build_path did not end path lookup where "
		       "expected, pos is %d\n", pos);
		/* presumably this is only possible if racing with a
		   rename of one of the parent directories (we can not
		   lock the dentries above us to prevent this, but
		   retrying should be harmless) */
		goto retry;
	}

	*pbase = base;
	*plen = PATH_MAX - 1 - pos;
	FUNC8("build_path on %p %d built %llx '%.*s'\n",
	     dentry, FUNC6(dentry), base, *plen, path + pos);
	return path + pos;
}