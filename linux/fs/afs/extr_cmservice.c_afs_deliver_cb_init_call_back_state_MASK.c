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
struct afs_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct afs_call*) ; 

__attribute__((used)) static int FUNC4(struct afs_call *call)
{
	int ret;

	FUNC0("");

	FUNC2(call, 0);
	ret = FUNC1(call, false);
	if (ret < 0)
		return ret;

	/* we'll need the file server record as that tells us which set of
	 * vnodes to operate upon */
	return FUNC3(call);
}