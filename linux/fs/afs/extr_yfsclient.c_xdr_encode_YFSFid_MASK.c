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
struct TYPE_2__ {void* unique; void* hi; void* lo; } ;
struct yfs_xdr_YFSFid {TYPE_1__ vnode; void* volume; } ;
struct afs_fid {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode_hi; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct yfs_xdr_YFSFid*) ; 

__attribute__((used)) static __be32 *FUNC3(__be32 *bp, struct afs_fid *fid)
{
	struct yfs_xdr_YFSFid *x = (void *)bp;

	x->volume	= FUNC1(fid->vid);
	x->vnode.lo	= FUNC1(fid->vnode);
	x->vnode.hi	= FUNC0(fid->vnode_hi);
	x->vnode.unique	= FUNC0(fid->unique);
	return bp + FUNC2(x);
}