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
struct yfs_xdr_YFSStoreStatus {void* group; void* owner; void* mtime_client; void* mode; void* mask; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int AFS_SET_MODE ; 
 int S_IALLUGO ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct yfs_xdr_YFSStoreStatus*) ; 

__attribute__((used)) static __be32 *FUNC3(__be32 *bp, mode_t mode)
{
	struct yfs_xdr_YFSStoreStatus *x = (void *)bp;

	x->mask		= FUNC0(AFS_SET_MODE);
	x->mode		= FUNC0(mode & S_IALLUGO);
	x->mtime_client	= FUNC1(0);
	x->owner	= FUNC1(0);
	x->group	= FUNC1(0);
	return bp + FUNC2(x);
}