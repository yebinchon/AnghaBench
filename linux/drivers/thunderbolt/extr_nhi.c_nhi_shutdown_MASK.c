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
struct tb_nhi {int hop_count; TYPE_2__* ops; int /*<<< orphan*/  msix_ida; int /*<<< orphan*/  interrupt_work; TYPE_1__* pdev; scalar_t__* rx_rings; scalar_t__* tx_rings; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* shutdown ) (struct tb_nhi*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  msix_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tb_nhi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_nhi*) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_nhi*) ; 

__attribute__((used)) static void FUNC7(struct tb_nhi *nhi)
{
	int i;

	FUNC1(&nhi->pdev->dev, "shutdown\n");

	for (i = 0; i < nhi->hop_count; i++) {
		if (nhi->tx_rings[i])
			FUNC0(&nhi->pdev->dev,
				 "TX ring %d is still active\n", i);
		if (nhi->rx_rings[i])
			FUNC0(&nhi->pdev->dev,
				 "RX ring %d is still active\n", i);
	}
	FUNC5(nhi);
	/*
	 * We have to release the irq before calling flush_work. Otherwise an
	 * already executing IRQ handler could call schedule_work again.
	 */
	if (!nhi->pdev->msix_enabled) {
		FUNC2(&nhi->pdev->dev, nhi->pdev->irq, nhi);
		FUNC3(&nhi->interrupt_work);
	}
	FUNC4(&nhi->msix_ida);

	if (nhi->ops && nhi->ops->shutdown)
		nhi->ops->shutdown(nhi);
}