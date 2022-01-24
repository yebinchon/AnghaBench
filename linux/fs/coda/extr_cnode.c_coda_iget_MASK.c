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
struct super_block {int dummy; } ;
struct inode {int i_state; unsigned long i_ino; } ;
struct coda_vattr {int dummy; } ;
struct coda_inode_info {scalar_t__ c_mapcount; } ;
struct CodaFid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct coda_inode_info* FUNC1 (struct inode*) ; 
 int I_NEW ; 
 unsigned long FUNC2 (struct CodaFid*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct coda_vattr*) ; 
 int /*<<< orphan*/  coda_set_inode ; 
 int /*<<< orphan*/  coda_test_inode ; 
 struct inode* FUNC4 (struct super_block*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct CodaFid*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

struct inode * FUNC6(struct super_block * sb, struct CodaFid * fid,
			 struct coda_vattr * attr)
{
	struct inode *inode;
	struct coda_inode_info *cii;
	unsigned long hash = FUNC2(fid);

	inode = FUNC4(sb, hash, coda_test_inode, coda_set_inode, fid);

	if (!inode)
		return FUNC0(-ENOMEM);

	if (inode->i_state & I_NEW) {
		cii = FUNC1(inode);
		/* we still need to set i_ino for things like stat(2) */
		inode->i_ino = hash;
		/* inode is locked and unique, no need to grab cii->c_lock */
		cii->c_mapcount = 0;
		FUNC5(inode);
	}

	/* always replace the attributes, type might have changed */
	FUNC3(inode, attr);
	return inode;
}