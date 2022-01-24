#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct afs_vldb_entry {int dummy; } ;
struct afs_vl_cursor {int /*<<< orphan*/  ac; int /*<<< orphan*/  key; TYPE_1__* cell; } ;
struct afs_uvldbentry__xdr {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  max_lifespan; struct afs_vldb_entry* ret_vldb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct afs_net* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VL_MAX_LIFESPAN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct afs_vldb_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int VLGETENTRYBYNAMEU ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_RXVLGetEntryByNameU ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_vldb_entry*) ; 
 struct afs_vldb_entry* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_call*) ; 

struct afs_vldb_entry *FUNC11(struct afs_vl_cursor *vc,
						  const char *volname,
						  int volnamesz)
{
	struct afs_vldb_entry *entry;
	struct afs_call *call;
	struct afs_net *net = vc->cell->net;
	size_t reqsz, padsz;
	__be32 *bp;

	FUNC1("");

	padsz = (4 - (volnamesz & 3)) & 3;
	reqsz = 8 + volnamesz + padsz;

	entry = FUNC7(sizeof(struct afs_vldb_entry), GFP_KERNEL);
	if (!entry)
		return FUNC0(-ENOMEM);

	call = FUNC2(net, &afs_RXVLGetEntryByNameU, reqsz,
				   sizeof(struct afs_uvldbentry__xdr));
	if (!call) {
		FUNC6(entry);
		return FUNC0(-ENOMEM);
	}

	call->key = vc->key;
	call->ret_vldb = entry;
	call->max_lifespan = AFS_VL_MAX_LIFESPAN;

	/* Marshall the parameters */
	bp = call->request;
	*bp++ = FUNC5(VLGETENTRYBYNAMEU);
	*bp++ = FUNC5(volnamesz);
	FUNC8(bp, volname, volnamesz);
	if (padsz > 0)
		FUNC9((void *)bp + volnamesz, 0, padsz);

	FUNC10(call);
	FUNC3(&vc->ac, call, GFP_KERNEL);
	return (struct afs_vldb_entry *)FUNC4(call, &vc->ac);
}