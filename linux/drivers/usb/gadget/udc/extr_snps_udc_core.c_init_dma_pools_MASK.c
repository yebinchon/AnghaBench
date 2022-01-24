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
struct udc_stp_dma {int dummy; } ;
struct udc_data_dma {int dummy; } ;
struct udc {int /*<<< orphan*/ * data_requests; int /*<<< orphan*/ * stp_requests; TYPE_2__* ep; int /*<<< orphan*/  dev; TYPE_1__* regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_stp_dma; struct udc_stp_dma* td_stp; struct udc_data_dma* td; int /*<<< orphan*/  td_phys; int /*<<< orphan*/ * dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udc*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t UDC_EP0IN_IX ; 
 size_t UDC_EP0OUT_IX ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct udc_stp_dma*,int /*<<< orphan*/ ) ; 
 int use_dma_bufferfill_mode ; 
 scalar_t__ use_dma_ppb ; 
 scalar_t__ use_dma_ppb_du ; 

int FUNC5(struct udc *dev)
{
	struct udc_stp_dma	*td_stp;
	struct udc_data_dma	*td_data;
	int retval;

	/* consistent DMA mode setting ? */
	if (use_dma_ppb) {
		use_dma_bufferfill_mode = 0;
	} else {
		use_dma_ppb_du = 0;
		use_dma_bufferfill_mode = 1;
	}

	/* DMA setup */
	dev->data_requests = FUNC2("data_requests", dev->dev,
		sizeof(struct udc_data_dma), 0, 0);
	if (!dev->data_requests) {
		FUNC0(dev, "can't get request data pool\n");
		return -ENOMEM;
	}

	/* EP0 in dma regs = dev control regs */
	dev->ep[UDC_EP0IN_IX].dma = &dev->regs->ctl;

	/* dma desc for setup data */
	dev->stp_requests = FUNC2("setup requests", dev->dev,
		sizeof(struct udc_stp_dma), 0, 0);
	if (!dev->stp_requests) {
		FUNC0(dev, "can't get stp request pool\n");
		retval = -ENOMEM;
		goto err_create_dma_pool;
	}
	/* setup */
	td_stp = FUNC1(dev->stp_requests, GFP_KERNEL,
				&dev->ep[UDC_EP0OUT_IX].td_stp_dma);
	if (!td_stp) {
		retval = -ENOMEM;
		goto err_alloc_dma;
	}
	dev->ep[UDC_EP0OUT_IX].td_stp = td_stp;

	/* data: 0 packets !? */
	td_data = FUNC1(dev->stp_requests, GFP_KERNEL,
				&dev->ep[UDC_EP0OUT_IX].td_phys);
	if (!td_data) {
		retval = -ENOMEM;
		goto err_alloc_phys;
	}
	dev->ep[UDC_EP0OUT_IX].td = td_data;
	return 0;

err_alloc_phys:
	FUNC4(dev->stp_requests, dev->ep[UDC_EP0OUT_IX].td_stp,
		      dev->ep[UDC_EP0OUT_IX].td_stp_dma);
err_alloc_dma:
	FUNC3(dev->stp_requests);
	dev->stp_requests = NULL;
err_create_dma_pool:
	FUNC3(dev->data_requests);
	dev->data_requests = NULL;
	return retval;
}