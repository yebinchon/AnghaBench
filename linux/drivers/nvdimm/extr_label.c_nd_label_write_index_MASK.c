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
typedef  unsigned long u64 ;
typedef  int u32 ;
struct nvdimm_drvdata {int ns_next; int ns_current; } ;
struct nd_namespace_index {int labelsize; void* myoff; void* checksum; int /*<<< orphan*/ * free; void* minor; void* major; void* nslot; void* labeloff; void* otheroff; void* mysize; void* seq; int /*<<< orphan*/  flags; int /*<<< orphan*/  sig; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BITS_PER_LONG ; 
 unsigned long ND_NSINDEX_INIT ; 
 int /*<<< orphan*/  NSINDEX_SIGNATURE ; 
 int /*<<< orphan*/  NSINDEX_SIG_LEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (unsigned long) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 unsigned long FUNC10 (struct nd_namespace_index*,unsigned long,int) ; 
 scalar_t__ FUNC11 (struct nvdimm_drvdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvdimm_drvdata*,int /*<<< orphan*/ ,struct nd_namespace_index*) ; 
 int FUNC13 (int) ; 
 int FUNC14 (struct nvdimm_drvdata*) ; 
 int FUNC15 (struct nvdimm_drvdata*,int /*<<< orphan*/ ,struct nd_namespace_index*,unsigned long) ; 
 unsigned long FUNC16 (struct nvdimm_drvdata*) ; 
 int FUNC17 (struct nvdimm_drvdata*) ; 
 int /*<<< orphan*/  FUNC18 (struct nvdimm_drvdata*) ; 
 struct nd_namespace_index* FUNC19 (struct nvdimm_drvdata*,int) ; 

__attribute__((used)) static int FUNC20(struct nvdimm_drvdata *ndd, int index, u32 seq,
		unsigned long flags)
{
	struct nd_namespace_index *nsindex;
	unsigned long offset;
	u64 checksum;
	u32 nslot;
	int rc;

	nsindex = FUNC19(ndd, index);
	if (flags & ND_NSINDEX_INIT)
		nslot = FUNC14(ndd);
	else
		nslot = FUNC5(nsindex->nslot);

	FUNC8(nsindex->sig, NSINDEX_SIGNATURE, NSINDEX_SIG_LEN);
	FUNC9(&nsindex->flags, 0, 3);
	nsindex->labelsize = FUNC17(ndd) >> 8;
	nsindex->seq = FUNC3(seq);
	offset = (unsigned long) nsindex
		- (unsigned long) FUNC19(ndd, 0);
	nsindex->myoff = FUNC4(offset);
	nsindex->mysize = FUNC4(FUNC16(ndd));
	offset = (unsigned long) FUNC19(ndd,
			FUNC13(index))
		- (unsigned long) FUNC19(ndd, 0);
	nsindex->otheroff = FUNC4(offset);
	offset = (unsigned long) FUNC11(ndd)
		- (unsigned long) FUNC19(ndd, 0);
	nsindex->labeloff = FUNC4(offset);
	nsindex->nslot = FUNC3(nslot);
	nsindex->major = FUNC2(1);
	if (FUNC17(ndd) < 256)
		nsindex->minor = FUNC2(1);
	else
		nsindex->minor = FUNC2(2);
	nsindex->checksum = FUNC4(0);
	if (flags & ND_NSINDEX_INIT) {
		unsigned long *free = (unsigned long *) nsindex->free;
		u32 nfree = FUNC0(nslot, BITS_PER_LONG);
		int last_bits, i;

		FUNC9(nsindex->free, 0xff, nfree / 8);
		for (i = 0, last_bits = nfree - nslot; i < last_bits; i++)
			FUNC7(nslot + i, free);
	}
	checksum = FUNC10(nsindex, FUNC16(ndd), 1);
	nsindex->checksum = FUNC4(checksum);
	rc = FUNC15(ndd, FUNC6(nsindex->myoff),
			nsindex, FUNC16(ndd));
	if (rc < 0)
		return rc;

	if (flags & ND_NSINDEX_INIT)
		return 0;

	/* copy the index we just wrote to the new 'next' */
	FUNC1(index != ndd->ns_next);
	FUNC12(ndd, FUNC18(ndd), nsindex);
	ndd->ns_current = FUNC13(ndd->ns_current);
	ndd->ns_next = FUNC13(ndd->ns_next);
	FUNC1(ndd->ns_current == ndd->ns_next);

	return 0;
}