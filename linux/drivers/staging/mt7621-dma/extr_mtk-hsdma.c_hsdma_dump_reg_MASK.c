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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSDMA_REG_DELAY_INT ; 
 int /*<<< orphan*/  HSDMA_REG_GLO_CFG ; 
 int /*<<< orphan*/  HSDMA_REG_INFO ; 
 int /*<<< orphan*/  HSDMA_REG_INT_MASK ; 
 int /*<<< orphan*/  HSDMA_REG_INT_STATUS ; 
 int /*<<< orphan*/  HSDMA_REG_RX_BASE ; 
 int /*<<< orphan*/  HSDMA_REG_RX_CNT ; 
 int /*<<< orphan*/  HSDMA_REG_RX_CRX ; 
 int /*<<< orphan*/  HSDMA_REG_RX_DRX ; 
 int /*<<< orphan*/  HSDMA_REG_TX_BASE ; 
 int /*<<< orphan*/  HSDMA_REG_TX_CNT ; 
 int /*<<< orphan*/  HSDMA_REG_TX_CTX ; 
 int /*<<< orphan*/  HSDMA_REG_TX_DTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hsdam_engine*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mtk_hsdam_engine *hsdma)
{
	FUNC0(hsdma->ddev.dev, "tbase %08x, tcnt %08x, " \
			"tctx %08x, tdtx: %08x, rbase %08x, " \
			"rcnt %08x, rctx %08x, rdtx %08x\n",
			FUNC1(hsdma, HSDMA_REG_TX_BASE),
			FUNC1(hsdma, HSDMA_REG_TX_CNT),
			FUNC1(hsdma, HSDMA_REG_TX_CTX),
			FUNC1(hsdma, HSDMA_REG_TX_DTX),
			FUNC1(hsdma, HSDMA_REG_RX_BASE),
			FUNC1(hsdma, HSDMA_REG_RX_CNT),
			FUNC1(hsdma, HSDMA_REG_RX_CRX),
			FUNC1(hsdma, HSDMA_REG_RX_DRX));

	FUNC0(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, " \
			"intr_stat %08x, intr_mask %08x\n",
			FUNC1(hsdma, HSDMA_REG_INFO),
			FUNC1(hsdma, HSDMA_REG_GLO_CFG),
			FUNC1(hsdma, HSDMA_REG_DELAY_INT),
			FUNC1(hsdma, HSDMA_REG_INT_STATUS),
			FUNC1(hsdma, HSDMA_REG_INT_MASK));
}