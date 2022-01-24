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
struct TYPE_2__ {int /*<<< orphan*/  pdev; int /*<<< orphan*/  sysctl_bar; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  QTN_EP_RESET_WAIT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOPAZ_RC_RST_EP_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qtnf_pcie_topaz_state *ts)
{
	FUNC4(FUNC0(TOPAZ_RC_RST_EP_IRQ),
	       FUNC1(ts->base.sysctl_bar));
	FUNC2(QTN_EP_RESET_WAIT_MS);
	FUNC3(ts->base.pdev);
}