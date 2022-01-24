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
struct switchtec_ntb {int /*<<< orphan*/  self_shared_dma; int /*<<< orphan*/  self_partition; int /*<<< orphan*/  mmio_peer_ctrl; TYPE_1__* stdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct switchtec_ntb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(struct switchtec_ntb *sndev)
{
	int rc;

	if (FUNC1(sndev))
		return 0;

	FUNC2(&sndev->stdev->dev, "reinitialize shared memory window\n");
	rc = FUNC0(sndev, sndev->mmio_peer_ctrl, 0,
				 sndev->self_partition,
				 sndev->self_shared_dma);
	return rc;
}