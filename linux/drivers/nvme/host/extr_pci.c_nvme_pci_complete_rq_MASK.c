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
struct nvme_iod {int /*<<< orphan*/  meta_dma; TYPE_1__* nvmeq; } ;
struct nvme_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bv_len; } ;
struct TYPE_3__ {struct nvme_dev* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request*) ; 
 struct nvme_iod* FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_dev*,struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 TYPE_2__* FUNC8 (struct request*) ; 

__attribute__((used)) static void FUNC9(struct request *req)
{
	struct nvme_iod *iod = FUNC1(req);
	struct nvme_dev *dev = iod->nvmeq->dev;

	FUNC4(req);
	if (FUNC0(req))
		FUNC3(dev->dev, iod->meta_dma,
			       FUNC8(req)->bv_len, FUNC7(req));
	if (FUNC2(req))
		FUNC6(dev, req);
	FUNC5(req);
}