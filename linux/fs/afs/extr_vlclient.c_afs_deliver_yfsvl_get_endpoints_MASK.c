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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int u32 ;
struct afs_call {int unmarshall; int count2; int count; int /*<<< orphan*/ * buffer; struct afs_addr_list* ret_alist; int /*<<< orphan*/  _iter; } ;
struct afs_addr_list {int version; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int /*<<< orphan*/  EBADMSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FS_SERVICE ; 
#define  YFS_ENDPOINT_IPV4 129 
#define  YFS_ENDPOINT_IPV6 128 
 int YFS_MAXENDPOINTS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct afs_addr_list* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_eproto_yvl_fsendpt4_len ; 
 int /*<<< orphan*/  afs_eproto_yvl_fsendpt6_len ; 
 int /*<<< orphan*/  afs_eproto_yvl_fsendpt_num ; 
 int /*<<< orphan*/  afs_eproto_yvl_fsendpt_type ; 
 int /*<<< orphan*/  afs_eproto_yvl_vlendpt4_len ; 
 int /*<<< orphan*/  afs_eproto_yvl_vlendpt6_len ; 
 int /*<<< orphan*/  afs_eproto_yvl_vlendpt_type ; 
 int FUNC3 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_addr_list*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_addr_list*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct afs_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct afs_call *call)
{
	struct afs_addr_list *alist;
	__be32 *bp;
	u32 uniquifier, size;
	int ret;

	FUNC0("{%u,%zu,%u}",
	       call->unmarshall, FUNC9(call->_iter), call->count2);

	switch (call->unmarshall) {
	case 0:
		FUNC5(call, sizeof(uuid_t) + 3 * sizeof(__be32));
		call->unmarshall = 1;

		/* Extract the returned uuid, uniquifier, fsEndpoints count and
		 * either the first fsEndpoint type or the volEndpoints
		 * count if there are no fsEndpoints. */
		/* Fall through */
	case 1:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		bp = call->buffer + sizeof(uuid_t);
		uniquifier	= FUNC10(*bp++);
		call->count	= FUNC10(*bp++);
		call->count2	= FUNC10(*bp); /* Type or next count */

		if (call->count > YFS_MAXENDPOINTS)
			return FUNC8(call, -EBADMSG,
						  afs_eproto_yvl_fsendpt_num);

		alist = FUNC2(call->count, FS_SERVICE, AFS_FS_PORT);
		if (!alist)
			return -ENOMEM;
		alist->version = uniquifier;
		call->ret_alist = alist;

		if (call->count == 0)
			goto extract_volendpoints;

	next_fsendpoint:
		switch (call->count2) {
		case YFS_ENDPOINT_IPV4:
			size = sizeof(__be32) * (1 + 1 + 1);
			break;
		case YFS_ENDPOINT_IPV6:
			size = sizeof(__be32) * (1 + 4 + 1);
			break;
		default:
			return FUNC8(call, -EBADMSG,
						  afs_eproto_yvl_fsendpt_type);
		}

		size += sizeof(__be32);
		FUNC5(call, size);
		call->unmarshall = 2;

		/* Fall through - and extract fsEndpoints[] entries */
	case 2:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		alist = call->ret_alist;
		bp = call->buffer;
		switch (call->count2) {
		case YFS_ENDPOINT_IPV4:
			if (FUNC10(bp[0]) != sizeof(__be32) * 2)
				return FUNC8(call, -EBADMSG,
							  afs_eproto_yvl_fsendpt4_len);
			FUNC6(alist, bp[1], FUNC10(bp[2]));
			bp += 3;
			break;
		case YFS_ENDPOINT_IPV6:
			if (FUNC10(bp[0]) != sizeof(__be32) * 5)
				return FUNC8(call, -EBADMSG,
							  afs_eproto_yvl_fsendpt6_len);
			FUNC7(alist, bp + 1, FUNC10(bp[5]));
			bp += 6;
			break;
		default:
			return FUNC8(call, -EBADMSG,
						  afs_eproto_yvl_fsendpt_type);
		}

		/* Got either the type of the next entry or the count of
		 * volEndpoints if no more fsEndpoints.
		 */
		call->count2 = FUNC10(*bp++);

		call->count--;
		if (call->count > 0)
			goto next_fsendpoint;

	extract_volendpoints:
		/* Extract the list of volEndpoints. */
		call->count = call->count2;
		if (!call->count)
			goto end;
		if (call->count > YFS_MAXENDPOINTS)
			return FUNC8(call, -EBADMSG,
						  afs_eproto_yvl_vlendpt_type);

		FUNC5(call, 1 * sizeof(__be32));
		call->unmarshall = 3;

		/* Extract the type of volEndpoints[0].  Normally we would
		 * extract the type of the next endpoint when we extract the
		 * data of the current one, but this is the first...
		 */
		/* Fall through */
	case 3:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		bp = call->buffer;

	next_volendpoint:
		call->count2 = FUNC10(*bp++);
		switch (call->count2) {
		case YFS_ENDPOINT_IPV4:
			size = sizeof(__be32) * (1 + 1 + 1);
			break;
		case YFS_ENDPOINT_IPV6:
			size = sizeof(__be32) * (1 + 4 + 1);
			break;
		default:
			return FUNC8(call, -EBADMSG,
						  afs_eproto_yvl_vlendpt_type);
		}

		if (call->count > 1)
			size += sizeof(__be32); /* Get next type too */
		FUNC5(call, size);
		call->unmarshall = 4;

		/* Fall through - and extract volEndpoints[] entries */
	case 4:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		bp = call->buffer;
		switch (call->count2) {
		case YFS_ENDPOINT_IPV4:
			if (FUNC10(bp[0]) != sizeof(__be32) * 2)
				return FUNC8(call, -EBADMSG,
							  afs_eproto_yvl_vlendpt4_len);
			bp += 3;
			break;
		case YFS_ENDPOINT_IPV6:
			if (FUNC10(bp[0]) != sizeof(__be32) * 5)
				return FUNC8(call, -EBADMSG,
							  afs_eproto_yvl_vlendpt6_len);
			bp += 6;
			break;
		default:
			return FUNC8(call, -EBADMSG,
						  afs_eproto_yvl_vlendpt_type);
		}

		/* Got either the type of the next entry or the count of
		 * volEndpoints if no more fsEndpoints.
		 */
		call->count--;
		if (call->count > 0)
			goto next_volendpoint;

	end:
		FUNC4(call, 0);
		call->unmarshall = 5;

		/* Fall through - Done */
	case 5:
		ret = FUNC3(call, false);
		if (ret < 0)
			return ret;
		call->unmarshall = 6;

	case 6:
		break;
	}

	FUNC1(" = 0 [done]");
	return 0;
}