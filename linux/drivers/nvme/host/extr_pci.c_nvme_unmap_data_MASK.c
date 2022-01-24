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
struct request {int dummy; } ;
struct nvme_sgl_desc {int /*<<< orphan*/  addr; } ;
struct nvme_iod {int npages; int /*<<< orphan*/  sg; scalar_t__ use_sgl; int /*<<< orphan*/  nents; scalar_t__ dma_len; int /*<<< orphan*/  first_dma; } ;
struct TYPE_2__ {int page_size; } ;
struct nvme_dev {int /*<<< orphan*/  iod_mempool; int /*<<< orphan*/  prp_page_pool; int /*<<< orphan*/  prp_small_pool; int /*<<< orphan*/  dev; TYPE_1__ ctrl; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int SGES_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nvme_iod* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void** FUNC8 (struct request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct nvme_dev *dev, struct request *req)
{
	struct nvme_iod *iod = FUNC1(req);
	const int last_prp = dev->ctrl.page_size / sizeof(__le64) - 1;
	dma_addr_t dma_addr = iod->first_dma, next_dma_addr;
	int i;

	if (iod->dma_len) {
		FUNC3(dev->dev, dma_addr, iod->dma_len,
			       FUNC10(req));
		return;
	}

	FUNC0(!iod->nents);

	if (FUNC5(FUNC11(iod->sg)))
		FUNC9(dev->dev, iod->sg, iod->nents,
				    FUNC10(req));
	else
		FUNC4(dev->dev, iod->sg, iod->nents, FUNC10(req));


	if (iod->npages == 0)
		FUNC2(dev->prp_small_pool, FUNC8(req)[0],
			dma_addr);

	for (i = 0; i < iod->npages; i++) {
		void *addr = FUNC8(req)[i];

		if (iod->use_sgl) {
			struct nvme_sgl_desc *sg_list = addr;

			next_dma_addr =
			    FUNC6((sg_list[SGES_PER_PAGE - 1]).addr);
		} else {
			__le64 *prp_list = addr;

			next_dma_addr = FUNC6(prp_list[last_prp]);
		}

		FUNC2(dev->prp_page_pool, addr, dma_addr);
		dma_addr = next_dma_addr;
	}

	FUNC7(iod->sg, dev->iod_mempool);
}