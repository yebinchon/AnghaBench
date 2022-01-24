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
struct afs_call {int unmarshall; unsigned int count2; int /*<<< orphan*/  out_volsync; int /*<<< orphan*/  out_scb; int /*<<< orphan*/ * buffer; struct afs_acl* ret_acl; int /*<<< orphan*/  tmp; } ;
struct afs_acl {unsigned int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_call*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*) ; 
 int /*<<< orphan*/  data ; 
 struct afs_acl* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_acl*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/  const**,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct afs_call *call)
{
	struct afs_acl *acl;
	const __be32 *bp;
	unsigned int size;
	int ret;

	FUNC0("{%u}", call->unmarshall);

	switch (call->unmarshall) {
	case 0:
		FUNC5(call);
		call->unmarshall++;
		/* Fall through */

		/* extract the returned data length */
	case 1:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		size = call->count2 = FUNC7(call->tmp);
		size = FUNC8(size, 4);

		acl = FUNC6(FUNC9(acl, data, size), GFP_KERNEL);
		if (!acl)
			return -ENOMEM;
		call->ret_acl = acl;
		acl->size = call->count2;
		FUNC2(call, acl->data, size);
		call->unmarshall++;
		/* Fall through */

		/* extract the returned data */
	case 2:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		FUNC4(call, (21 + 6) * 4);
		call->unmarshall++;
		/* Fall through */

		/* extract the metadata */
	case 3:
		ret = FUNC3(call, false);
		if (ret < 0)
			return ret;

		bp = call->buffer;
		ret = FUNC10(&bp, call, call->out_scb);
		if (ret < 0)
			return ret;
		FUNC11(&bp, call->out_volsync);

		call->unmarshall++;

	case 4:
		break;
	}

	FUNC1(" = 0 [done]");
	return 0;
}