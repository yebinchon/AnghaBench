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
struct TYPE_4__ {TYPE_1__* pdev; int /*<<< orphan*/  topo; int /*<<< orphan*/ * ops; } ;
struct idt_ntb_dev {TYPE_2__ ntb; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NTB_TOPO_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  idt_ntb_ops ; 
 int FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(struct idt_ntb_dev *ndev)
{
	int ret;

	/* Initialize the rest of NTB device structure and register it */
	ndev->ntb.ops = &idt_ntb_ops;
	ndev->ntb.topo = NTB_TOPO_SWITCH;

	ret = FUNC2(&ndev->ntb);
	if (ret != 0) {
		FUNC1(&ndev->ntb.pdev->dev, "Failed to register NTB device");
		return ret;
	}

	FUNC0(&ndev->ntb.pdev->dev, "NTB device successfully registered");

	return 0;
}