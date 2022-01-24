#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct scatterlist {int dummy; } ;
struct request {int dummy; } ;
struct TYPE_4__ {void* prp2; void* prp1; } ;
struct nvme_rw_command {TYPE_2__ dptr; } ;
struct nvme_iod {int first_dma; int npages; int /*<<< orphan*/  nents; struct scatterlist* sg; } ;
struct TYPE_3__ {int page_size; } ;
struct nvme_dev {struct dma_pool* prp_page_pool; struct dma_pool* prp_small_pool; TYPE_1__ ctrl; } ;
struct dma_pool {int dummy; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  blk_status_t ;
typedef  void* __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 struct nvme_iod* FUNC3 (struct request*) ; 
 int FUNC4 (struct request*) ; 
 void* FUNC5 (int) ; 
 void** FUNC6 (struct dma_pool*,int /*<<< orphan*/ ,int*) ; 
 void** FUNC7 (struct request*) ; 
 int /*<<< orphan*/  nvme_print_sgl ; 
 int FUNC8 (struct scatterlist*) ; 
 int FUNC9 (struct scatterlist*) ; 
 struct scatterlist* FUNC10 (struct scatterlist*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static blk_status_t FUNC12(struct nvme_dev *dev,
		struct request *req, struct nvme_rw_command *cmnd)
{
	struct nvme_iod *iod = FUNC3(req);
	struct dma_pool *pool;
	int length = FUNC4(req);
	struct scatterlist *sg = iod->sg;
	int dma_len = FUNC9(sg);
	u64 dma_addr = FUNC8(sg);
	u32 page_size = dev->ctrl.page_size;
	int offset = dma_addr & (page_size - 1);
	__le64 *prp_list;
	void **list = FUNC7(req);
	dma_addr_t prp_dma;
	int nprps, i;

	length -= (page_size - offset);
	if (length <= 0) {
		iod->first_dma = 0;
		goto done;
	}

	dma_len -= (page_size - offset);
	if (dma_len) {
		dma_addr += (page_size - offset);
	} else {
		sg = FUNC10(sg);
		dma_addr = FUNC8(sg);
		dma_len = FUNC9(sg);
	}

	if (length <= page_size) {
		iod->first_dma = dma_addr;
		goto done;
	}

	nprps = FUNC0(length, page_size);
	if (nprps <= (256 / 8)) {
		pool = dev->prp_small_pool;
		iod->npages = 0;
	} else {
		pool = dev->prp_page_pool;
		iod->npages = 1;
	}

	prp_list = FUNC6(pool, GFP_ATOMIC, &prp_dma);
	if (!prp_list) {
		iod->first_dma = dma_addr;
		iod->npages = -1;
		return BLK_STS_RESOURCE;
	}
	list[0] = prp_list;
	iod->first_dma = prp_dma;
	i = 0;
	for (;;) {
		if (i == page_size >> 3) {
			__le64 *old_prp_list = prp_list;
			prp_list = FUNC6(pool, GFP_ATOMIC, &prp_dma);
			if (!prp_list)
				return BLK_STS_RESOURCE;
			list[iod->npages++] = prp_list;
			prp_list[0] = old_prp_list[i - 1];
			old_prp_list[i - 1] = FUNC5(prp_dma);
			i = 1;
		}
		prp_list[i++] = FUNC5(dma_addr);
		dma_len -= page_size;
		dma_addr += page_size;
		length -= page_size;
		if (length <= 0)
			break;
		if (dma_len > 0)
			continue;
		if (FUNC11(dma_len < 0))
			goto bad_sgl;
		sg = FUNC10(sg);
		dma_addr = FUNC8(sg);
		dma_len = FUNC9(sg);
	}

done:
	cmnd->dptr.prp1 = FUNC5(FUNC8(iod->sg));
	cmnd->dptr.prp2 = FUNC5(iod->first_dma);

	return BLK_STS_OK;

 bad_sgl:
	FUNC2(FUNC1(nvme_print_sgl, iod->sg, iod->nents),
			"Invalid SGL for payload:%d nents:%d\n",
			FUNC4(req), iod->nents);
	return BLK_STS_IOERR;
}