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
struct nvme_iod {int /*<<< orphan*/  meta_dma; } ;
struct nvme_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  metadata; } ;
struct nvme_command {TYPE_1__ rw; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 struct nvme_iod* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 

__attribute__((used)) static blk_status_t FUNC6(struct nvme_dev *dev, struct request *req,
		struct nvme_command *cmnd)
{
	struct nvme_iod *iod = FUNC0(req);

	iod->meta_dma = FUNC2(dev->dev, FUNC5(req),
			FUNC4(req), 0);
	if (FUNC3(dev->dev, iod->meta_dma))
		return BLK_STS_IOERR;
	cmnd->rw.metadata = FUNC1(iod->meta_dma);
	return 0;
}