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
struct switchtec_ntb {int* direct_mw_to_bar; int /*<<< orphan*/  self_shared_dma; int /*<<< orphan*/  self_shared; TYPE_1__* stdev; int /*<<< orphan*/  peer_shared; int /*<<< orphan*/  self_partition; int /*<<< orphan*/  mmio_peer_ctrl; int /*<<< orphan*/  nr_rsvd_luts; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {TYPE_2__* pdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LUT_SIZE ; 
 int FUNC0 (struct switchtec_ntb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct switchtec_ntb*) ; 

__attribute__((used)) static int FUNC7(struct switchtec_ntb *sndev)
{
	int self_bar = sndev->direct_mw_to_bar[0];
	int rc;

	sndev->nr_rsvd_luts++;
	sndev->self_shared = FUNC3(&sndev->stdev->pdev->dev,
						LUT_SIZE,
						&sndev->self_shared_dma,
						GFP_KERNEL);
	if (!sndev->self_shared) {
		FUNC2(&sndev->stdev->dev,
			"unable to allocate memory for shared mw\n");
		return -ENOMEM;
	}

	FUNC6(sndev);

	rc = FUNC0(sndev, sndev->mmio_peer_ctrl, 0,
				 sndev->self_partition,
				 sndev->self_shared_dma);
	if (rc)
		goto unalloc_and_exit;

	sndev->peer_shared = FUNC5(sndev->stdev->pdev, self_bar, LUT_SIZE);
	if (!sndev->peer_shared) {
		rc = -ENOMEM;
		goto unalloc_and_exit;
	}

	FUNC1(&sndev->stdev->dev, "Shared MW Ready\n");
	return 0;

unalloc_and_exit:
	FUNC4(&sndev->stdev->pdev->dev, LUT_SIZE,
			  sndev->self_shared, sndev->self_shared_dma);

	return rc;
}