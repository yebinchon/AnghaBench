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
struct request {int dummy; } ;
struct TYPE_3__ {int type; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ sgl; } ;
struct nvme_rw_command {TYPE_2__ dptr; int /*<<< orphan*/  flags; } ;
struct nvme_iod {int /*<<< orphan*/  dma_len; int /*<<< orphan*/  first_dma; } ;
struct nvme_dev {int /*<<< orphan*/  dev; } ;
struct bio_vec {int /*<<< orphan*/  bv_len; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  NVME_CMD_SGL_METABUF ; 
 int NVME_SGL_FMT_DATA_DESC ; 
 struct nvme_iod* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bio_vec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 

__attribute__((used)) static blk_status_t FUNC6(struct nvme_dev *dev,
		struct request *req, struct nvme_rw_command *cmnd,
		struct bio_vec *bv)
{
	struct nvme_iod *iod = FUNC0(req);

	iod->first_dma = FUNC3(dev->dev, bv, FUNC5(req), 0);
	if (FUNC4(dev->dev, iod->first_dma))
		return BLK_STS_RESOURCE;
	iod->dma_len = bv->bv_len;

	cmnd->flags = NVME_CMD_SGL_METABUF;
	cmnd->dptr.sgl.addr = FUNC2(iod->first_dma);
	cmnd->dptr.sgl.length = FUNC1(iod->dma_len);
	cmnd->dptr.sgl.type = NVME_SGL_FMT_DATA_DESC << 4;
	return 0;
}