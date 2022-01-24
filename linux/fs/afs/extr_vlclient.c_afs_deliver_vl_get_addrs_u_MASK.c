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
struct afs_uuid__xdr {int dummy; } ;
struct afs_call {int unmarshall; int count; int count2; int /*<<< orphan*/ * buffer; struct afs_addr_list* ret_alist; int /*<<< orphan*/  _iter; } ;
struct afs_addr_list {int version; int nr_addrs; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct afs_addr_list* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_addr_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct afs_call *call)
{
	struct afs_addr_list *alist;
	__be32 *bp;
	u32 uniquifier, nentries, count;
	int i, ret;

	FUNC0("{%u,%zu/%u}",
	       call->unmarshall, FUNC6(call->_iter), call->count);

	switch (call->unmarshall) {
	case 0:
		FUNC4(call,
				   sizeof(struct afs_uuid__xdr) + 3 * sizeof(__be32));
		call->unmarshall++;

		/* Extract the returned uuid, uniquifier, nentries and
		 * blkaddrs size */
		/* Fall through */
	case 1:
		ret = FUNC3(call, true);
		if (ret < 0)
			return ret;

		bp = call->buffer + sizeof(struct afs_uuid__xdr);
		uniquifier	= FUNC8(*bp++);
		nentries	= FUNC8(*bp++);
		count		= FUNC8(*bp);

		nentries = FUNC7(nentries, count);
		alist = FUNC2(nentries, FS_SERVICE, AFS_FS_PORT);
		if (!alist)
			return -ENOMEM;
		alist->version = uniquifier;
		call->ret_alist = alist;
		call->count = count;
		call->count2 = nentries;
		call->unmarshall++;

	more_entries:
		count = FUNC7(call->count, 4U);
		FUNC4(call, count * sizeof(__be32));

		/* Fall through - and extract entries */
	case 2:
		ret = FUNC3(call, call->count > 4);
		if (ret < 0)
			return ret;

		alist = call->ret_alist;
		bp = call->buffer;
		count = FUNC7(call->count, 4U);
		for (i = 0; i < count; i++)
			if (alist->nr_addrs < call->count2)
				FUNC5(alist, *bp++, AFS_FS_PORT);

		call->count -= count;
		if (call->count > 0)
			goto more_entries;
		call->unmarshall++;
		break;
	}

	FUNC1(" = 0 [done]");
	return 0;
}