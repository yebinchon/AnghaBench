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
struct scatterlist {int dummy; } ;
struct request {int dummy; } ;
struct nvme_sgl_desc {int dummy; } ;
struct TYPE_2__ {struct nvme_sgl_desc sgl; } ;
struct nvme_rw_command {TYPE_1__ dptr; int /*<<< orphan*/  flags; } ;
struct nvme_iod {int npages; int /*<<< orphan*/  first_dma; struct scatterlist* sg; } ;
struct nvme_dev {struct dma_pool* prp_page_pool; struct dma_pool* prp_small_pool; } ;
struct dma_pool {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NVME_CMD_SGL_METABUF ; 
 int SGES_PER_PAGE ; 
 struct nvme_iod* FUNC0 (struct request*) ; 
 struct nvme_sgl_desc* FUNC1 (struct dma_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nvme_sgl_desc** FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_sgl_desc*,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_sgl_desc*,int /*<<< orphan*/ ,int) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 

__attribute__((used)) static blk_status_t FUNC6(struct nvme_dev *dev,
		struct request *req, struct nvme_rw_command *cmd, int entries)
{
	struct nvme_iod *iod = FUNC0(req);
	struct dma_pool *pool;
	struct nvme_sgl_desc *sg_list;
	struct scatterlist *sg = iod->sg;
	dma_addr_t sgl_dma;
	int i = 0;

	/* setting the transfer type as SGL */
	cmd->flags = NVME_CMD_SGL_METABUF;

	if (entries == 1) {
		FUNC3(&cmd->dptr.sgl, sg);
		return BLK_STS_OK;
	}

	if (entries <= (256 / sizeof(struct nvme_sgl_desc))) {
		pool = dev->prp_small_pool;
		iod->npages = 0;
	} else {
		pool = dev->prp_page_pool;
		iod->npages = 1;
	}

	sg_list = FUNC1(pool, GFP_ATOMIC, &sgl_dma);
	if (!sg_list) {
		iod->npages = -1;
		return BLK_STS_RESOURCE;
	}

	FUNC2(req)[0] = sg_list;
	iod->first_dma = sgl_dma;

	FUNC4(&cmd->dptr.sgl, sgl_dma, entries);

	do {
		if (i == SGES_PER_PAGE) {
			struct nvme_sgl_desc *old_sg_desc = sg_list;
			struct nvme_sgl_desc *link = &old_sg_desc[i - 1];

			sg_list = FUNC1(pool, GFP_ATOMIC, &sgl_dma);
			if (!sg_list)
				return BLK_STS_RESOURCE;

			i = 0;
			FUNC2(req)[iod->npages++] = sg_list;
			sg_list[i++] = *link;
			FUNC4(link, sgl_dma, entries);
		}

		FUNC3(&sg_list[i++], sg);
		sg = FUNC5(sg);
	} while (--entries > 0);

	return BLK_STS_OK;
}