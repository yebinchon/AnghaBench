#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_8__ {TYPE_3__ caps; int /*<<< orphan*/  ep_list; int /*<<< orphan*/ * ops; int /*<<< orphan*/  max_streams; int /*<<< orphan*/  name; } ;
struct cdns3_endpoint {int num; int /*<<< orphan*/  wa2_descmiss_req_list; int /*<<< orphan*/  deferred_req_list; int /*<<< orphan*/  pending_req_list; TYPE_4__ endpoint; int /*<<< orphan*/  name; scalar_t__ flags; int /*<<< orphan*/  dir; struct cdns3_device* cdns3_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep_list; } ;
struct cdns3_device {int /*<<< orphan*/  dev; TYPE_2__ gadget; struct cdns3_endpoint** eps; TYPE_1__* regs; } ;
struct TYPE_5__ {int /*<<< orphan*/  usb_cap4; int /*<<< orphan*/  usb_cap3; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CDNS3_ENDPOINTS_MAX_COUNT ; 
 int /*<<< orphan*/  CDNS3_EP_MAX_PACKET_LIMIT ; 
 int /*<<< orphan*/  CDNS3_EP_MAX_STREAMS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_device*) ; 
 int /*<<< orphan*/  cdns3_gadget_ep_ops ; 
 int FUNC3 (struct cdns3_device*,struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct cdns3_endpoint* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct cdns3_device *priv_dev)
{
	u32 ep_enabled_reg, iso_ep_reg;
	struct cdns3_endpoint *priv_ep;
	int ep_dir, ep_number;
	u32 ep_mask;
	int ret = 0;
	int i;

	/* Read it from USB_CAP3 to USB_CAP5 */
	ep_enabled_reg = FUNC9(&priv_dev->regs->usb_cap3);
	iso_ep_reg = FUNC9(&priv_dev->regs->usb_cap4);

	FUNC4(priv_dev->dev, "Initializing non-zero endpoints\n");

	for (i = 0; i < CDNS3_ENDPOINTS_MAX_COUNT; i++) {
		ep_dir = i >> 4;	/* i div 16 */
		ep_number = i & 0xF;	/* i % 16 */
		ep_mask = FUNC0(i);

		if (!(ep_enabled_reg & ep_mask))
			continue;

		if (ep_dir && !ep_number) {
			priv_dev->eps[i] = priv_dev->eps[0];
			continue;
		}

		priv_ep = FUNC7(priv_dev->dev, sizeof(*priv_ep),
				       GFP_KERNEL);
		if (!priv_ep)
			goto err;

		/* set parent of endpoint object */
		priv_ep->cdns3_dev = priv_dev;
		priv_dev->eps[i] = priv_ep;
		priv_ep->num = ep_number;
		priv_ep->dir = ep_dir ? USB_DIR_IN : USB_DIR_OUT;

		if (!ep_number) {
			ret = FUNC3(priv_dev, priv_ep);
			if (ret) {
				FUNC5(priv_dev->dev, "Failed to init ep0\n");
				goto err;
			}
		} else {
			FUNC10(priv_ep->name, sizeof(priv_ep->name), "ep%d%s",
				 ep_number, !!ep_dir ? "in" : "out");
			priv_ep->endpoint.name = priv_ep->name;

			FUNC11(&priv_ep->endpoint,
						   CDNS3_EP_MAX_PACKET_LIMIT);
			priv_ep->endpoint.max_streams = CDNS3_EP_MAX_STREAMS;
			priv_ep->endpoint.ops = &cdns3_gadget_ep_ops;
			if (ep_dir)
				priv_ep->endpoint.caps.dir_in = 1;
			else
				priv_ep->endpoint.caps.dir_out = 1;

			if (iso_ep_reg & ep_mask)
				priv_ep->endpoint.caps.type_iso = 1;

			priv_ep->endpoint.caps.type_bulk = 1;
			priv_ep->endpoint.caps.type_int = 1;

			FUNC8(&priv_ep->endpoint.ep_list,
				      &priv_dev->gadget.ep_list);
		}

		priv_ep->flags = 0;

		FUNC6(priv_dev->dev, "Initialized  %s support: %s %s\n",
			 priv_ep->name,
			 priv_ep->endpoint.caps.type_bulk ? "BULK, INT" : "",
			 priv_ep->endpoint.caps.type_iso ? "ISO" : "");

		FUNC1(&priv_ep->pending_req_list);
		FUNC1(&priv_ep->deferred_req_list);
		FUNC1(&priv_ep->wa2_descmiss_req_list);
	}

	return 0;
err:
	FUNC2(priv_dev);
	return -ENOMEM;
}