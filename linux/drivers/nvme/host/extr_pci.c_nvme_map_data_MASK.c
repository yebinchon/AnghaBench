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
struct request {int /*<<< orphan*/  q; } ;
struct nvme_iod {scalar_t__ use_sgl; int /*<<< orphan*/  nents; int /*<<< orphan*/  sg; scalar_t__ dma_len; TYPE_1__* nvmeq; } ;
struct TYPE_4__ {int page_size; int sgls; } ;
struct nvme_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  iod_mempool; TYPE_2__ ctrl; } ;
struct nvme_command {int /*<<< orphan*/  rw; } ;
struct bio_vec {int bv_offset; int bv_len; int /*<<< orphan*/  bv_page; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_3__ {scalar_t__ qid; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_OK ; 
 scalar_t__ BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  DMA_ATTR_NO_WARN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct nvme_iod* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nvme_dev*,struct request*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct nvme_dev*,struct request*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (struct nvme_dev*,struct request*) ; 
 scalar_t__ FUNC9 (struct nvme_dev*,struct request*,int /*<<< orphan*/ *,struct bio_vec*) ; 
 scalar_t__ FUNC10 (struct nvme_dev*,struct request*,int /*<<< orphan*/ *,struct bio_vec*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_dev*,struct request*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio_vec FUNC13 (struct request*) ; 
 int /*<<< orphan*/  FUNC14 (struct request*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC17(struct nvme_dev *dev, struct request *req,
		struct nvme_command *cmnd)
{
	struct nvme_iod *iod = FUNC0(req);
	blk_status_t ret = BLK_STS_RESOURCE;
	int nr_mapped;

	if (FUNC2(req) == 1) {
		struct bio_vec bv = FUNC13(req);

		if (!FUNC4(bv.bv_page)) {
			if (bv.bv_offset + bv.bv_len <= dev->ctrl.page_size * 2)
				return FUNC9(dev, req,
							     &cmnd->rw, &bv);

			if (iod->nvmeq->qid &&
			    dev->ctrl.sgls & ((1 << 0) | (1 << 1)))
				return FUNC10(dev, req,
							     &cmnd->rw, &bv);
		}
	}

	iod->dma_len = 0;
	iod->sg = FUNC5(dev->iod_mempool, GFP_ATOMIC);
	if (!iod->sg)
		return BLK_STS_RESOURCE;
	FUNC15(iod->sg, FUNC2(req));
	iod->nents = FUNC1(req->q, req, iod->sg);
	if (!iod->nents)
		goto out;

	if (FUNC4(FUNC16(iod->sg)))
		nr_mapped = FUNC12(dev->dev, iod->sg,
				iod->nents, FUNC14(req), DMA_ATTR_NO_WARN);
	else
		nr_mapped = FUNC3(dev->dev, iod->sg, iod->nents,
					     FUNC14(req), DMA_ATTR_NO_WARN);
	if (!nr_mapped)
		goto out;

	iod->use_sgl = FUNC8(dev, req);
	if (iod->use_sgl)
		ret = FUNC7(dev, req, &cmnd->rw, nr_mapped);
	else
		ret = FUNC6(dev, req, &cmnd->rw);
out:
	if (ret != BLK_STS_OK)
		FUNC11(dev, req);
	return ret;
}