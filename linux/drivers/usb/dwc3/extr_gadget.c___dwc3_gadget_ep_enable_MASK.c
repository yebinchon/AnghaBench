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
typedef  int /*<<< orphan*/  u32 ;
struct usb_endpoint_descriptor {int dummy; } ;
struct dwc3_trb {void* param1; void* param0; int /*<<< orphan*/  ctrl; void* bph; void* bpl; } ;
struct dwc3_gadget_ep_cmd_params {void* param1; void* param0; int /*<<< orphan*/  ctrl; void* bph; void* bpl; } ;
struct TYPE_2__ {struct usb_endpoint_descriptor* desc; } ;
struct dwc3_ep {int flags; struct dwc3_trb* trb_pool; int /*<<< orphan*/  stream_capable; scalar_t__ trb_enqueue; scalar_t__ trb_dequeue; int /*<<< orphan*/  number; int /*<<< orphan*/  type; struct dwc3* dwc; TYPE_1__ endpoint; } ;
struct dwc3 {int /*<<< orphan*/  regs; } ;
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DALEPENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWC3_DEPCMD_STARTTRANSFER ; 
 int DWC3_EP_ENABLED ; 
 int /*<<< orphan*/  DWC3_TRBCTL_LINK_TRB ; 
 int /*<<< orphan*/  DWC3_TRB_CTRL_HWO ; 
 int DWC3_TRB_NUM ; 
 int FUNC1 (struct dwc3_ep*,unsigned int) ; 
 int FUNC2 (struct dwc3_ep*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dwc3_ep*,int /*<<< orphan*/ ,struct dwc3_trb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc3_ep*,struct dwc3_trb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc3_trb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc3_ep*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC12 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC13 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC14 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static int FUNC15(struct dwc3_ep *dep, unsigned int action)
{
	const struct usb_endpoint_descriptor *desc = dep->endpoint.desc;
	struct dwc3		*dwc = dep->dwc;

	u32			reg;
	int			ret;

	if (!(dep->flags & DWC3_EP_ENABLED)) {
		ret = FUNC2(dep);
		if (ret)
			return ret;
	}

	ret = FUNC1(dep, action);
	if (ret)
		return ret;

	if (!(dep->flags & DWC3_EP_ENABLED)) {
		struct dwc3_trb	*trb_st_hw;
		struct dwc3_trb	*trb_link;

		dep->type = FUNC11(desc);
		dep->flags |= DWC3_EP_ENABLED;

		reg = FUNC3(dwc->regs, DWC3_DALEPENA);
		reg |= FUNC0(dep->number);
		FUNC6(dwc->regs, DWC3_DALEPENA, reg);

		if (FUNC13(desc))
			goto out;

		/* Initialize the TRB ring */
		dep->trb_dequeue = 0;
		dep->trb_enqueue = 0;
		FUNC8(dep->trb_pool, 0,
		       sizeof(struct dwc3_trb) * DWC3_TRB_NUM);

		/* Link TRB. The HWO bit is never reset */
		trb_st_hw = &dep->trb_pool[0];

		trb_link = &dep->trb_pool[DWC3_TRB_NUM - 1];
		trb_link->bpl = FUNC7(FUNC5(dep, trb_st_hw));
		trb_link->bph = FUNC10(FUNC5(dep, trb_st_hw));
		trb_link->ctrl |= DWC3_TRBCTL_LINK_TRB;
		trb_link->ctrl |= DWC3_TRB_CTRL_HWO;
	}

	/*
	 * Issue StartTransfer here with no-op TRB so we can always rely on No
	 * Response Update Transfer command.
	 */
	if ((FUNC12(desc) && !dep->stream_capable) ||
			FUNC14(desc)) {
		struct dwc3_gadget_ep_cmd_params params;
		struct dwc3_trb	*trb;
		dma_addr_t trb_dma;
		u32 cmd;

		FUNC8(&params, 0, sizeof(params));
		trb = &dep->trb_pool[0];
		trb_dma = FUNC5(dep, trb);

		params.param0 = FUNC10(trb_dma);
		params.param1 = FUNC7(trb_dma);

		cmd = DWC3_DEPCMD_STARTTRANSFER;

		ret = FUNC4(dep, cmd, &params);
		if (ret < 0)
			return ret;
	}

out:
	FUNC9(dep);

	return 0;
}