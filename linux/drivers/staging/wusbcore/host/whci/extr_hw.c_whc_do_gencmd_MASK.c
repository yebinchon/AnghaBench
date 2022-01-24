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
typedef  int u32 ;
struct whc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; scalar_t__ base; scalar_t__ gen_cmd_buf_dma; int /*<<< orphan*/  gen_cmd_buf; TYPE_1__* umc; int /*<<< orphan*/  cmd_wq; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  WHC_GENCMD_TIMEOUT_MS ; 
 scalar_t__ WUSBGENADDR ; 
 scalar_t__ WUSBGENCMDPARAMS ; 
 scalar_t__ WUSBGENCMDSTS ; 
 int WUSBGENCMDSTS_ACTIVE ; 
 int WUSBGENCMDSTS_IOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC10(struct whc *whc, u32 cmd, u32 params, void *addr, size_t len)
{
	unsigned long flags;
	dma_addr_t dma_addr;
	int t;
	int ret = 0;

	FUNC5(&whc->mutex);

	/* Wait for previous command to complete. */
	t = FUNC9(whc->cmd_wq,
			       (FUNC1(whc->base + WUSBGENCMDSTS) & WUSBGENCMDSTS_ACTIVE) == 0,
			       WHC_GENCMD_TIMEOUT_MS);
	if (t == 0) {
		FUNC0(&whc->umc->dev, "generic command timeout (%04x/%04x)\n",
			FUNC1(whc->base + WUSBGENCMDSTS),
			FUNC1(whc->base + WUSBGENCMDPARAMS));
		ret = -ETIMEDOUT;
		goto out;
	}

	if (addr) {
		FUNC4(whc->gen_cmd_buf, addr, len);
		dma_addr = whc->gen_cmd_buf_dma;
	} else
		dma_addr = 0;

	/* Poke registers to start cmd. */
	FUNC7(&whc->lock, flags);

	FUNC2(params, whc->base + WUSBGENCMDPARAMS);
	FUNC3(dma_addr, whc->base + WUSBGENADDR);

	FUNC2(WUSBGENCMDSTS_ACTIVE | WUSBGENCMDSTS_IOC | cmd,
		  whc->base + WUSBGENCMDSTS);

	FUNC8(&whc->lock, flags);
out:
	FUNC6(&whc->mutex);

	return ret;
}