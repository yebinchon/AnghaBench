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
struct timespec64 {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SET_MTIME ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64 const*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct yfs_xdr_YFSStoreStatus*) ; 

__attribute__((used)) static __be32 *FUNC4(__be32 *bp, const struct timespec64 *t)
{
	struct yfs_xdr_YFSStoreStatus *x = (void *)bp;
	s64 mtime = FUNC1(t);

	x->mask		= FUNC0(AFS_SET_MTIME);
	x->mode		= FUNC0(0);
	x->mtime_client	= FUNC2(mtime);
	x->owner	= FUNC2(0);
	x->group	= FUNC2(0);
	return bp + FUNC3(x);
}