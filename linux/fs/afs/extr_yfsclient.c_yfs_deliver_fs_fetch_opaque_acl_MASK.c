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
struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct yfs_acl {int flags; void* num_cleaned; void* inherit_flag; struct afs_acl* vol_acl; struct afs_acl* acl; } ;
struct afs_call {int unmarshall; unsigned int count2; int /*<<< orphan*/  out_volsync; int /*<<< orphan*/  out_scb; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  tmp; struct yfs_acl* out_yacl; } ;
struct afs_acl {unsigned int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int YFS_ACL_WANT_ACL ; 
 int YFS_ACL_WANT_VOL_ACL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_call*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_call*) ; 
 int /*<<< orphan*/  data ; 
 struct afs_acl* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_acl*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/  const**,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct afs_call *call)
{
	struct yfs_acl *yacl = call->out_yacl;
	struct afs_acl *acl;
	const __be32 *bp;
	unsigned int size;
	int ret;

	FUNC0("{%u}", call->unmarshall);

	switch (call->unmarshall) {
	case 0:
		FUNC6(call);
		call->unmarshall++;
		/* Fall through */

		/* Extract the file ACL length */
	case 1:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		size = call->count2 = FUNC8(call->tmp);
		size = FUNC9(size, 4);

		if (yacl->flags & YFS_ACL_WANT_ACL) {
			acl = FUNC7(FUNC10(acl, data, size), GFP_KERNEL);
			if (!acl)
				return -ENOMEM;
			yacl->acl = acl;
			acl->size = call->count2;
			FUNC2(call, acl->data, size);
		} else {
			FUNC4(call, size);
		}
		call->unmarshall++;
		/* Fall through */

		/* Extract the file ACL */
	case 2:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		FUNC6(call);
		call->unmarshall++;
		/* Fall through */

		/* Extract the volume ACL length */
	case 3:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		size = call->count2 = FUNC8(call->tmp);
		size = FUNC9(size, 4);

		if (yacl->flags & YFS_ACL_WANT_VOL_ACL) {
			acl = FUNC7(FUNC10(acl, data, size), GFP_KERNEL);
			if (!acl)
				return -ENOMEM;
			yacl->vol_acl = acl;
			acl->size = call->count2;
			FUNC2(call, acl->data, size);
		} else {
			FUNC4(call, size);
		}
		call->unmarshall++;
		/* Fall through */

		/* Extract the volume ACL */
	case 4:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		FUNC5(call,
				   sizeof(__be32) * 2 +
				   sizeof(struct yfs_xdr_YFSFetchStatus) +
				   sizeof(struct yfs_xdr_YFSVolSync));
		call->unmarshall++;
		/* Fall through */

		/* extract the metadata */
	case 5:
		ret = FUNC3(call, false);
		if (ret < 0)
			return ret;

		bp = call->buffer;
		yacl->inherit_flag = FUNC8(*bp++);
		yacl->num_cleaned = FUNC8(*bp++);
		ret = FUNC11(&bp, call, call->out_scb);
		if (ret < 0)
			return ret;
		FUNC12(&bp, call->out_volsync);

		call->unmarshall++;
		/* Fall through */

	case 6:
		break;
	}

	FUNC1(" = 0 [done]");
	return 0;
}