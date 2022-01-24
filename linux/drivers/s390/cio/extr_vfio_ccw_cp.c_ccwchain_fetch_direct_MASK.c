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
struct pfn_array {unsigned long* pa_iova_pfn; scalar_t__ pa_nr; } ;
struct channel_program {int /*<<< orphan*/  mdev; } ;
struct ccwchain {struct pfn_array* ch_pa; struct ccw1* ch_ccw; } ;
struct ccw1 {int count; unsigned long cda; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  iova ;
typedef  unsigned long __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FLAG_IDA ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct ccw1*) ; 
 scalar_t__ FUNC1 (struct ccw1*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long*,unsigned long,int) ; 
 int FUNC3 (void*,int) ; 
 unsigned long* FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 
 int FUNC6 (struct pfn_array*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pfn_array*,unsigned long*) ; 
 int FUNC8 (struct pfn_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pfn_array*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long*) ; 

__attribute__((used)) static int FUNC11(struct ccwchain *chain,
				 int idx,
				 struct channel_program *cp)
{
	struct ccw1 *ccw;
	struct pfn_array *pa;
	u64 iova;
	unsigned long *idaws;
	int ret;
	int bytes = 1;
	int idaw_nr, idal_len;
	int i;

	ccw = chain->ch_ccw + idx;

	if (ccw->count)
		bytes = ccw->count;

	/* Calculate size of IDAL */
	if (FUNC1(ccw)) {
		/* Read first IDAW to see if it's 4K-aligned or not. */
		/* All subsequent IDAws will be 4K-aligned. */
		ret = FUNC2(cp->mdev, &iova, ccw->cda, sizeof(iova));
		if (ret)
			return ret;
	} else {
		iova = ccw->cda;
	}
	idaw_nr = FUNC3((void *)iova, bytes);
	idal_len = idaw_nr * sizeof(*idaws);

	/* Allocate an IDAL from host storage */
	idaws = FUNC4(idaw_nr, sizeof(*idaws), GFP_DMA | GFP_KERNEL);
	if (!idaws) {
		ret = -ENOMEM;
		goto out_init;
	}

	/*
	 * Allocate an array of pfn's for pages to pin/translate.
	 * The number of pages is actually the count of the idaws
	 * required for the data transfer, since we only only support
	 * 4K IDAWs today.
	 */
	pa = chain->ch_pa + idx;
	ret = FUNC6(pa, iova, bytes);
	if (ret < 0)
		goto out_free_idaws;

	if (FUNC1(ccw)) {
		/* Copy guest IDAL into host IDAL */
		ret = FUNC2(cp->mdev, idaws, ccw->cda, idal_len);
		if (ret)
			goto out_unpin;

		/*
		 * Copy guest IDAWs into pfn_array, in case the memory they
		 * occupy is not contiguous.
		 */
		for (i = 0; i < idaw_nr; i++)
			pa->pa_iova_pfn[i] = idaws[i] >> PAGE_SHIFT;
	} else {
		/*
		 * No action is required here; the iova addresses in pfn_array
		 * were initialized sequentially in pfn_array_alloc() beginning
		 * with the contents of ccw->cda.
		 */
	}

	if (FUNC0(ccw)) {
		ret = FUNC8(pa, cp->mdev);
		if (ret < 0)
			goto out_unpin;
	} else {
		pa->pa_nr = 0;
	}

	ccw->cda = (__u32) FUNC10(idaws);
	ccw->flags |= CCW_FLAG_IDA;

	/* Populate the IDAL with pinned/translated addresses from pfn */
	FUNC7(pa, idaws);

	return 0;

out_unpin:
	FUNC9(pa, cp->mdev);
out_free_idaws:
	FUNC5(idaws);
out_init:
	ccw->cda = 0;
	return ret;
}