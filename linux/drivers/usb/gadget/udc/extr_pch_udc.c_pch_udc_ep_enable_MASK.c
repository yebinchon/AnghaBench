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
typedef  int u32 ;
struct usb_endpoint_descriptor {int bmAttributes; } ;
struct pch_udc_ep {int in; int num; int /*<<< orphan*/  dev; } ;
struct pch_udc_cfg_data {int cur_cfg; int cur_intf; int cur_alt; } ;

/* Variables and functions */
 int UDC_CSR_NE_ALT_SHIFT ; 
 int UDC_CSR_NE_CFG_SHIFT ; 
 int UDC_CSR_NE_DIR_SHIFT ; 
 int UDC_CSR_NE_INTF_SHIFT ; 
 int UDC_CSR_NE_MAX_PKT_SHIFT ; 
 int UDC_CSR_NE_NUM_SHIFT ; 
 int UDC_CSR_NE_TYPE_SHIFT ; 
 int UDC_EPIN_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UDC_EPOUT_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int USB_ENDPOINT_XFERTYPE_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct pch_udc_ep*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_udc_ep*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_udc_ep*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_udc_ep*) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_udc_ep*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static void FUNC9(struct pch_udc_ep *ep,
			       struct pch_udc_cfg_data *cfg,
			       const struct usb_endpoint_descriptor *desc)
{
	u32 val = 0;
	u32 buff_size = 0;

	FUNC6(ep, desc->bmAttributes);
	if (ep->in)
		buff_size = UDC_EPIN_BUFF_SIZE;
	else
		buff_size = UDC_EPOUT_BUFF_SIZE;
	FUNC3(ep, buff_size, ep->in);
	FUNC4(ep, FUNC8(desc));
	FUNC5(ep);
	FUNC2(ep, ep->in);
	/* Configure the endpoint */
	val = ep->num << UDC_CSR_NE_NUM_SHIFT | ep->in << UDC_CSR_NE_DIR_SHIFT |
	      ((desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK) <<
		UDC_CSR_NE_TYPE_SHIFT) |
	      (cfg->cur_cfg << UDC_CSR_NE_CFG_SHIFT) |
	      (cfg->cur_intf << UDC_CSR_NE_INTF_SHIFT) |
	      (cfg->cur_alt << UDC_CSR_NE_ALT_SHIFT) |
	      FUNC8(desc) << UDC_CSR_NE_MAX_PKT_SHIFT;

	if (ep->in)
		FUNC7(ep->dev, val, FUNC0(ep->num));
	else
		FUNC7(ep->dev, val, FUNC1(ep->num));
}