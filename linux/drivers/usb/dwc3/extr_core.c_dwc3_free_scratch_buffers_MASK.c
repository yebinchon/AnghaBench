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
struct dwc3 {int nr_scratch; int /*<<< orphan*/  scratchbuf; int /*<<< orphan*/  scratch_addr; int /*<<< orphan*/  sysdev; int /*<<< orphan*/  has_hibernation; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int DWC3_SCRATCHBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dwc3 *dwc)
{
	if (!dwc->has_hibernation)
		return;

	if (!dwc->nr_scratch)
		return;

	 /* should never fall here */
	if (!FUNC0(dwc->scratchbuf))
		return;

	FUNC1(dwc->sysdev, dwc->scratch_addr, dwc->nr_scratch *
			DWC3_SCRATCHBUF_SIZE, DMA_BIDIRECTIONAL);
	FUNC2(dwc->scratchbuf);
}