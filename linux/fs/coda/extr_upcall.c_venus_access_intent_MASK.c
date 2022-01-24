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
typedef  union outputArgs {int dummy; } outputArgs ;
struct CodaFid {int dummy; } ;
struct TYPE_2__ {size_t count; int type; int /*<<< orphan*/  pos; struct CodaFid VFid; } ;
union inputArgs {TYPE_1__ coda_access_intent; } ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CODA_ACCESS_INTENT ; 
 int CODA_ACCESS_TYPE_READ_FINISH ; 
 int CODA_ACCESS_TYPE_WRITE_FINISH ; 
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  access_intent ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*,union inputArgs*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (union inputArgs*) ; 

int FUNC5(struct super_block *sb, struct CodaFid *fid,
			bool *access_intent_supported,
			size_t count, loff_t ppos, int type)
{
	union inputArgs *inp;
	union outputArgs *outp;
	int insize, outsize, error;
	bool finalizer =
		type == CODA_ACCESS_TYPE_READ_FINISH ||
		type == CODA_ACCESS_TYPE_WRITE_FINISH;

	if (!*access_intent_supported && !finalizer)
		return 0;

	insize = FUNC0(access_intent);
	FUNC1(CODA_ACCESS_INTENT);

	inp->coda_access_intent.VFid = *fid;
	inp->coda_access_intent.count = count;
	inp->coda_access_intent.pos = ppos;
	inp->coda_access_intent.type = type;

	error = FUNC2(FUNC3(sb), insize,
			    finalizer ? NULL : &outsize, inp);

	/*
	 * we have to free the request buffer for synchronous upcalls
	 * or when asynchronous upcalls fail, but not when asynchronous
	 * upcalls succeed
	 */
	if (!finalizer || error)
		FUNC4(inp);

	/* Chunked access is not supported or an old Coda client */
	if (error == -EOPNOTSUPP) {
		*access_intent_supported = false;
		error = 0;
	}
	return error;
}