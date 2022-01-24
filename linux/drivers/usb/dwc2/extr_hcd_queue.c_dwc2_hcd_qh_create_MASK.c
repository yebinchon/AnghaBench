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
struct dwc2_qh {int dummy; } ;
struct TYPE_2__ {scalar_t__ dma_desc_enable; } ;
struct dwc2_hsotg {TYPE_1__ params; } ;
struct dwc2_hcd_urb {int /*<<< orphan*/  priv; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 scalar_t__ FUNC1 (struct dwc2_hsotg*,struct dwc2_qh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,struct dwc2_qh*,struct dwc2_hcd_urb*,int /*<<< orphan*/ ) ; 
 struct dwc2_qh* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct dwc2_qh *FUNC4(struct dwc2_hsotg *hsotg,
				   struct dwc2_hcd_urb *urb,
					  gfp_t mem_flags)
{
	struct dwc2_qh *qh;

	if (!urb->priv)
		return NULL;

	/* Allocate memory */
	qh = FUNC3(sizeof(*qh), mem_flags);
	if (!qh)
		return NULL;

	FUNC2(hsotg, qh, urb, mem_flags);

	if (hsotg->params.dma_desc_enable &&
	    FUNC1(hsotg, qh, mem_flags) < 0) {
		FUNC0(hsotg, qh);
		return NULL;
	}

	return qh;
}