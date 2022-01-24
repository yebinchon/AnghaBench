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
struct dwc3_trb {int dummy; } ;
struct dwc3_ep {scalar_t__ trb_pool_dma; int /*<<< orphan*/ * trb_pool; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  sysdev; } ;

/* Variables and functions */
 int DWC3_TRB_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct dwc3_ep *dep)
{
	struct dwc3		*dwc = dep->dwc;

	FUNC0(dwc->sysdev, sizeof(struct dwc3_trb) * DWC3_TRB_NUM,
			dep->trb_pool, dep->trb_pool_dma);

	dep->trb_pool = NULL;
	dep->trb_pool_dma = 0;
}