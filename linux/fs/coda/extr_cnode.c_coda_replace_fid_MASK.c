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
struct inode {unsigned long i_ino; } ;
struct CodaFid {int dummy; } ;
struct coda_inode_info {struct CodaFid c_fid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct coda_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,unsigned long) ; 
 unsigned long FUNC3 (struct CodaFid*) ; 
 int /*<<< orphan*/  FUNC4 (struct CodaFid*,struct CodaFid*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

void FUNC6(struct inode *inode, struct CodaFid *oldfid, 
		      struct CodaFid *newfid)
{
	struct coda_inode_info *cii = FUNC1(inode);
	unsigned long hash = FUNC3(newfid);
	
	FUNC0(!FUNC4(&cii->c_fid, oldfid));

	/* replace fid and rehash inode */
	/* XXX we probably need to hold some lock here! */
	FUNC5(inode);
	cii->c_fid = *newfid;
	inode->i_ino = hash;
	FUNC2(inode, hash);
}