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
typedef  int /*<<< orphan*/  u32 ;
struct dwc3 {int nr_scratch; int /*<<< orphan*/  scratch_addr; int /*<<< orphan*/  sysdev; int /*<<< orphan*/  scratchbuf; int /*<<< orphan*/  has_hibernation; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DWC3_DGCMD_SET_SCRATCHPAD_ADDR_HI ; 
 int /*<<< orphan*/  DWC3_DGCMD_SET_SCRATCHPAD_ADDR_LO ; 
 int DWC3_SCRATCHBUF_SIZE ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dwc3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dwc3 *dwc)
{
	dma_addr_t scratch_addr;
	u32 param;
	int ret;

	if (!dwc->has_hibernation)
		return 0;

	if (!dwc->nr_scratch)
		return 0;

	 /* should never fall here */
	if (!FUNC0(dwc->scratchbuf))
		return 0;

	scratch_addr = FUNC2(dwc->sysdev, dwc->scratchbuf,
			dwc->nr_scratch * DWC3_SCRATCHBUF_SIZE,
			DMA_BIDIRECTIONAL);
	if (FUNC3(dwc->sysdev, scratch_addr)) {
		FUNC1(dwc->sysdev, "failed to map scratch buffer\n");
		ret = -EFAULT;
		goto err0;
	}

	dwc->scratch_addr = scratch_addr;

	param = FUNC6(scratch_addr);

	ret = FUNC5(dwc,
			DWC3_DGCMD_SET_SCRATCHPAD_ADDR_LO, param);
	if (ret < 0)
		goto err1;

	param = FUNC7(scratch_addr);

	ret = FUNC5(dwc,
			DWC3_DGCMD_SET_SCRATCHPAD_ADDR_HI, param);
	if (ret < 0)
		goto err1;

	return 0;

err1:
	FUNC4(dwc->sysdev, dwc->scratch_addr, dwc->nr_scratch *
			DWC3_SCRATCHBUF_SIZE, DMA_BIDIRECTIONAL);

err0:
	return ret;
}