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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  fscache; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_inode_info*) ; 
 struct ceph_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct page*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

void FUNC6(struct inode *inode, struct page *page)
{
	struct ceph_inode_info *ci = FUNC2(inode);
	int ret;

	if (!FUNC0(page))
		return;

	if (!FUNC1(ci))
		return;

	ret = FUNC4(ci->fscache, page, FUNC5(inode),
				 GFP_KERNEL);
	if (ret)
		 FUNC3(ci->fscache, page);
}