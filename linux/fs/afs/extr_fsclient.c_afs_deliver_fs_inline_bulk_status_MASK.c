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
typedef  size_t u32 ;
struct afs_status_cb {int dummy; } ;
struct afs_call {int unmarshall; size_t count2; size_t count; int /*<<< orphan*/  out_volsync; int /*<<< orphan*/ * buffer; struct afs_status_cb* out_scb; int /*<<< orphan*/  tmp; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  afs_eproto_ibulkst_cb_count ; 
 int /*<<< orphan*/  afs_eproto_ibulkst_count ; 
 int FUNC3 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*) ; 
 int FUNC6 (struct afs_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const**,struct afs_call*,struct afs_status_cb*) ; 
 int FUNC9 (int /*<<< orphan*/  const**,struct afs_call*,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct afs_call *call)
{
	struct afs_status_cb *scb;
	const __be32 *bp;
	u32 tmp;
	int ret;

	FUNC1("{%u}", call->unmarshall);

	switch (call->unmarshall) {
	case 0:
		FUNC5(call);
		call->unmarshall++;
		/* Fall through */

		/* Extract the file status count and array in two steps */
	case 1:
		FUNC0("extract status count");
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		tmp = FUNC7(call->tmp);
		FUNC0("status count: %u/%u", tmp, call->count2);
		if (tmp != call->count2)
			return FUNC6(call, -EBADMSG,
						  afs_eproto_ibulkst_count);

		call->count = 0;
		call->unmarshall++;
	more_counts:
		FUNC4(call, 21 * sizeof(__be32));
		/* Fall through */

	case 2:
		FUNC0("extract status array %u", call->count);
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		bp = call->buffer;
		scb = &call->out_scb[call->count];
		ret = FUNC9(&bp, call, scb);
		if (ret < 0)
			return ret;

		call->count++;
		if (call->count < call->count2)
			goto more_counts;

		call->count = 0;
		call->unmarshall++;
		FUNC5(call);
		/* Fall through */

		/* Extract the callback count and array in two steps */
	case 3:
		FUNC0("extract CB count");
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		tmp = FUNC7(call->tmp);
		FUNC0("CB count: %u", tmp);
		if (tmp != call->count2)
			return FUNC6(call, -EBADMSG,
						  afs_eproto_ibulkst_cb_count);
		call->count = 0;
		call->unmarshall++;
	more_cbs:
		FUNC4(call, 3 * sizeof(__be32));
		/* Fall through */

	case 4:
		FUNC0("extract CB array");
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		FUNC0("unmarshall CB array");
		bp = call->buffer;
		scb = &call->out_scb[call->count];
		FUNC8(&bp, call, scb);
		call->count++;
		if (call->count < call->count2)
			goto more_cbs;

		FUNC4(call, 6 * sizeof(__be32));
		call->unmarshall++;
		/* Fall through */

	case 5:
		ret = FUNC3(call, false);
		if (ret < 0)
			return ret;

		bp = call->buffer;
		FUNC10(&bp, call->out_volsync);

		call->unmarshall++;

	case 6:
		break;
	}

	FUNC2(" = 0 [done]");
	return 0;
}