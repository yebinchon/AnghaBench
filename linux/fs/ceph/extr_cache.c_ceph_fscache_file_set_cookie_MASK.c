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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  fscache; int /*<<< orphan*/  i_vino; } ;

/* Variables and functions */
 int /*<<< orphan*/  ceph_fscache_can_enable ; 
 struct ceph_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct inode*,struct file*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 

void FUNC9(struct inode *inode, struct file *filp)
{
	struct ceph_inode_info *ci = FUNC0(inode);

	if (!FUNC3(ci->fscache))
		return;

	if (FUNC8(inode)) {
		FUNC1("fscache_file_set_cookie %p %p disabling cache\n",
		     inode, filp);
		FUNC4(ci->fscache, &ci->i_vino, false);
		FUNC6(ci->fscache, inode);
	} else {
		FUNC5(ci->fscache, &ci->i_vino, FUNC7(inode),
				      ceph_fscache_can_enable, inode);
		if (FUNC2(ci->fscache)) {
			FUNC1("fscache_file_set_cookie %p %p enabling cache\n",
			     inode, filp);
		}
	}
}