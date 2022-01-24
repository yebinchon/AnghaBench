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
struct afs_fid {void* unique; void* vnode; void* vid; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const __be32 **_bp, struct afs_fid *fid)
{
	const __be32 *bp = *_bp;

	fid->vid		= FUNC0(*bp++);
	fid->vnode		= FUNC0(*bp++);
	fid->unique		= FUNC0(*bp++);
	*_bp = bp;
}