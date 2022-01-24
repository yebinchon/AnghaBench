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
struct udc {int /*<<< orphan*/  data_requests; int /*<<< orphan*/  stp_requests; TYPE_1__* ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_stp_dma; int /*<<< orphan*/  td_stp; int /*<<< orphan*/  td_phys; int /*<<< orphan*/  td; } ;

/* Variables and functions */
 size_t UDC_EP0OUT_IX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct udc *dev)
{
	FUNC1(dev->stp_requests, dev->ep[UDC_EP0OUT_IX].td,
		      dev->ep[UDC_EP0OUT_IX].td_phys);
	FUNC1(dev->stp_requests, dev->ep[UDC_EP0OUT_IX].td_stp,
		      dev->ep[UDC_EP0OUT_IX].td_stp_dma);
	FUNC0(dev->stp_requests);
	FUNC0(dev->data_requests);
}