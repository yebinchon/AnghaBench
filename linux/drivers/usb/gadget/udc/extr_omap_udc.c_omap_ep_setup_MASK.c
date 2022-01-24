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
typedef  int u8 ;
typedef  unsigned int u16 ;
struct TYPE_5__ {int type_control; int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_7__ {int* name; int /*<<< orphan*/  ep_list; int /*<<< orphan*/ * ops; TYPE_1__ caps; } ;
struct omap_ep {int* name; int bEndpointAddress; int bmAttributes; int double_buf; unsigned int maxpacket; TYPE_3__ ep; TYPE_4__* udc; int /*<<< orphan*/  iso; int /*<<< orphan*/  queue; int /*<<< orphan*/  timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep_list; } ;
struct TYPE_8__ {TYPE_2__ gadget; struct omap_ep* ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,unsigned int,unsigned int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int UDC_EPN_RX_DB ; 
 unsigned int UDC_EPN_RX_ISO ; 
 unsigned int UDC_EPN_RX_VALID ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int USB_DIR_IN ; 
#define  USB_ENDPOINT_XFER_BULK 131 
#define  USB_ENDPOINT_XFER_CONTROL 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap_ep_ops ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pio_out_timer ; 
 int /*<<< orphan*/  FUNC9 (int*,char*,int) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* udc ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  use_dma ; 

__attribute__((used)) static unsigned
FUNC13(char *name, u8 addr, u8 type,
		unsigned buf, unsigned maxp, int dbuf)
{
	struct omap_ep	*ep;
	u16		epn_rxtx = 0;

	/* OUT endpoints first, then IN */
	ep = &udc->ep[addr & 0xf];
	if (addr & USB_DIR_IN)
		ep += 16;

	/* in case of ep init table bugs */
	FUNC1(ep->name[0]);

	/* chip setup ... bit values are same for IN, OUT */
	if (type == USB_ENDPOINT_XFER_ISOC) {
		switch (maxp) {
		case 8:
			epn_rxtx = 0 << 12;
			break;
		case 16:
			epn_rxtx = 1 << 12;
			break;
		case 32:
			epn_rxtx = 2 << 12;
			break;
		case 64:
			epn_rxtx = 3 << 12;
			break;
		case 128:
			epn_rxtx = 4 << 12;
			break;
		case 256:
			epn_rxtx = 5 << 12;
			break;
		case 512:
			epn_rxtx = 6 << 12;
			break;
		default:
			FUNC0();
		}
		epn_rxtx |= UDC_EPN_RX_ISO;
		dbuf = 1;
	} else {
		/* double-buffering "not supported" on 15xx,
		 * and ignored for PIO-IN on newer chips
		 * (for more reliable behavior)
		 */
		if (!use_dma || FUNC6())
			dbuf = 0;

		switch (maxp) {
		case 8:
			epn_rxtx = 0 << 12;
			break;
		case 16:
			epn_rxtx = 1 << 12;
			break;
		case 32:
			epn_rxtx = 2 << 12;
			break;
		case 64:
			epn_rxtx = 3 << 12;
			break;
		default:
			FUNC0();
		}
		if (dbuf && addr)
			epn_rxtx |= UDC_EPN_RX_DB;
		FUNC11(&ep->timer, pio_out_timer, 0);
	}
	if (addr)
		epn_rxtx |= UDC_EPN_RX_VALID;
	FUNC1(buf & 0x07);
	epn_rxtx |= buf >> 3;

	FUNC2("%s addr %02x rxtx %04x maxp %d%s buf %d\n",
		name, addr, epn_rxtx, maxp, dbuf ? "x2" : "", buf);

	if (addr & USB_DIR_IN)
		FUNC8(epn_rxtx, FUNC5(addr & 0xf));
	else
		FUNC8(epn_rxtx, FUNC4(addr));

	/* next endpoint's buffer starts after this one's */
	buf += maxp;
	if (dbuf)
		buf += maxp;
	FUNC1(buf > 2048);

	/* set up driver data structures */
	FUNC1(FUNC10(name) >= sizeof ep->name);
	FUNC9(ep->name, name, sizeof ep->name);
	FUNC3(&ep->queue);
	FUNC3(&ep->iso);
	ep->bEndpointAddress = addr;
	ep->bmAttributes = type;
	ep->double_buf = dbuf;
	ep->udc = udc;

	switch (type) {
	case USB_ENDPOINT_XFER_CONTROL:
		ep->ep.caps.type_control = true;
		ep->ep.caps.dir_in = true;
		ep->ep.caps.dir_out = true;
		break;
	case USB_ENDPOINT_XFER_ISOC:
		ep->ep.caps.type_iso = true;
		break;
	case USB_ENDPOINT_XFER_BULK:
		ep->ep.caps.type_bulk = true;
		break;
	case USB_ENDPOINT_XFER_INT:
		ep->ep.caps.type_int = true;
		break;
	};

	if (addr & USB_DIR_IN)
		ep->ep.caps.dir_in = true;
	else
		ep->ep.caps.dir_out = true;

	ep->ep.name = ep->name;
	ep->ep.ops = &omap_ep_ops;
	ep->maxpacket = maxp;
	FUNC12(&ep->ep, ep->maxpacket);
	FUNC7(&ep->ep.ep_list, &udc->gadget.ep_list);

	return buf;
}