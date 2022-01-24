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
struct snic_sg_desc {scalar_t__ addr; int /*<<< orphan*/  len; } ;
struct snic_req_info {int dummy; } ;
struct snic {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct snic_sg_desc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snic_req_info*) ; 

void
FUNC6(struct snic *snic, struct snic_req_info *rqi)
{
	struct snic_sg_desc *sgd;

	sgd = FUNC4(FUNC5(rqi));
	FUNC0(sgd[0].addr == 0);
	FUNC1(&snic->pdev->dev,
			 FUNC3(sgd[0].addr),
			 FUNC2(sgd[0].len),
			 DMA_FROM_DEVICE);
}