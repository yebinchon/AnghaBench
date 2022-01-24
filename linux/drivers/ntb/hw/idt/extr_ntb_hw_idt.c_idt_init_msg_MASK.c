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
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; int /*<<< orphan*/ * msg_locks; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char IDT_MSG_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct idt_ntb_dev *ndev)
{
	unsigned char midx;

	/* Init the messages routing table lockers */
	for (midx = 0; midx < IDT_MSG_CNT; midx++)
		FUNC1(&ndev->msg_locks[midx]);

	FUNC0(&ndev->ntb.pdev->dev, "NTB Messaging initialized");
}