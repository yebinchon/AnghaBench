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
struct coda_inode_info {int /*<<< orphan*/  c_fid; } ;
struct CodaFid {int dummy; } ;

/* Variables and functions */
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct CodaFid*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, void *data)
{
	struct CodaFid *fid = (struct CodaFid *)data;
	struct coda_inode_info *cii = FUNC0(inode);
	return FUNC1(&cii->c_fid, fid);
}