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
 int /*<<< orphan*/  AFS_CALL_SV_REPLYING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct afs_call*) ; 
 int FUNC5 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_io_error_cm_reply ; 

__attribute__((used)) static int FUNC6(struct afs_call *call)
{
	int ret;

	FUNC0("");

	FUNC3(call, 0);
	ret = FUNC2(call, false);
	if (ret < 0)
		return ret;

	if (!FUNC1(call, AFS_CALL_SV_REPLYING))
		return FUNC5(call, afs_io_error_cm_reply);
	return FUNC4(call);
}