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
typedef  int u32 ;
struct afs_call {int unmarshall; int count; int count2; int /*<<< orphan*/  tmp; int /*<<< orphan*/  iter; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct afs_call *call)
{
	u32 count;
	int ret;

	FUNC0("{%u,%zu}", call->unmarshall, FUNC5(&call->iter));

	switch (call->unmarshall) {
	case 0:
		FUNC4(call);
		call->unmarshall++;
		/* Fall through */

		/* Extract the capabilities word count */
	case 1:
		ret = FUNC2(call, true);
		if (ret < 0)
			return ret;

		count = FUNC6(call->tmp);

		call->count = count;
		call->count2 = count;
		FUNC3(call, count * sizeof(__be32));
		call->unmarshall++;
		/* Fall through */

		/* Extract capabilities words */
	case 2:
		ret = FUNC2(call, false);
		if (ret < 0)
			return ret;

		/* TODO: Examine capabilities */

		call->unmarshall++;
		break;
	}

	FUNC1(" = 0 [done]");
	return 0;
}