#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ssusb_mtk {int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  mcu_clk; int /*<<< orphan*/  dma_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ssusb_mtk *ssusb)
{
	FUNC0(ssusb->dma_clk);
	FUNC0(ssusb->mcu_clk);
	FUNC0(ssusb->ref_clk);
	FUNC0(ssusb->sys_clk);
}