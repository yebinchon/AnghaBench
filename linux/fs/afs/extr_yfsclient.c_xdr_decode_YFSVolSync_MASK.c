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
typedef  int /*<<< orphan*/  u64 ;
struct yfs_xdr_YFSVolSync {int /*<<< orphan*/  vol_creation_date; } ;
struct afs_volsync {int /*<<< orphan*/  creation; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct yfs_xdr_YFSVolSync*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const __be32 **_bp,
				  struct afs_volsync *volsync)
{
	struct yfs_xdr_YFSVolSync *x = (void *)*_bp;
	u64 creation;

	if (volsync) {
		creation = FUNC2(x->vol_creation_date);
		FUNC0(creation, 10 * 1000 * 1000);
		volsync->creation = creation;
	}

	*_bp += FUNC1(x);
}