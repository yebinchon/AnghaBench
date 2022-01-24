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
typedef  int u8 ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct net2272_ep {scalar_t__ stopped; scalar_t__ is_in; TYPE_2__ ep; int /*<<< orphan*/  desc; } ;
struct TYPE_3__ {scalar_t__ speed; } ;
struct net2272 {int /*<<< orphan*/  lock; struct net2272_ep* ep; TYPE_1__ gadget; int /*<<< orphan*/  chiprev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  unsigned int ssize_t ;

/* Variables and functions */
 int ALT_NAK_OUT_PACKETS ; 
 int AUTOVALIDATE ; 
 int CONTROL_STATUS_PHASE_HANDSHAKE ; 
 int /*<<< orphan*/  DMAREQ ; 
 int DMA_BUFFER_VALID ; 
 int DMA_CONTROL_DACK ; 
 int DMA_REQUEST ; 
 int DMA_REQUEST_ENABLE ; 
 int ENDPOINT_HALT ; 
 int ENDPOINT_TOGGLE ; 
 int /*<<< orphan*/  EP_AVAIL0 ; 
 int /*<<< orphan*/  EP_AVAIL1 ; 
 int /*<<< orphan*/  EP_BUFF_STATES ; 
 int /*<<< orphan*/  EP_CFG ; 
 int /*<<< orphan*/  EP_IRQENB ; 
 int /*<<< orphan*/  EP_RSPSET ; 
 int /*<<< orphan*/  EP_STAT0 ; 
 int /*<<< orphan*/  EP_STAT1 ; 
 int /*<<< orphan*/  EP_TRANSFER0 ; 
 int /*<<< orphan*/  EP_TRANSFER1 ; 
 int /*<<< orphan*/  EP_TRANSFER2 ; 
 int HIDE_STATUS_PHASE ; 
 int INTERRUPT_MODE ; 
 int /*<<< orphan*/  IRQENB0 ; 
 int /*<<< orphan*/  IRQENB1 ; 
 int /*<<< orphan*/  IRQSTAT0 ; 
 int /*<<< orphan*/  IRQSTAT1 ; 
 int /*<<< orphan*/  LOCCTL ; 
 int NAK_OUT_PACKETS_MODE ; 
 int /*<<< orphan*/  OURADDR ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  USBCTL0 ; 
 int /*<<< orphan*/  USBCTL1 ; 
 int USB_HIGH_SPEED ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int VBUS_PIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net2272* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  driver_vers ; 
 int /*<<< orphan*/ * ep_name ; 
 int FUNC2 (struct net2272_ep*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net2272*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (char*,unsigned int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *_dev, struct device_attribute *attr, char *buf)
{
	struct net2272 *dev;
	char *next;
	unsigned size, t;
	unsigned long flags;
	u8 t1, t2;
	int i;
	const char *s;

	dev = FUNC1(_dev);
	next = buf;
	size = PAGE_SIZE;
	FUNC5(&dev->lock, flags);

	/* Main Control Registers */
	t = FUNC4(next, size, "%s version %s,"
		"chiprev %02x, locctl %02x\n"
		"irqenb0 %02x irqenb1 %02x "
		"irqstat0 %02x irqstat1 %02x\n",
		driver_name, driver_vers, dev->chiprev,
		FUNC3(dev, LOCCTL),
		FUNC3(dev, IRQENB0),
		FUNC3(dev, IRQENB1),
		FUNC3(dev, IRQSTAT0),
		FUNC3(dev, IRQSTAT1));
	size -= t;
	next += t;

	/* DMA */
	t1 = FUNC3(dev, DMAREQ);
	t = FUNC4(next, size, "\ndmareq %02x: %s %s%s%s%s\n",
		t1, ep_name[(t1 & 0x01) + 1],
		t1 & (1 << DMA_CONTROL_DACK) ? "dack " : "",
		t1 & (1 << DMA_REQUEST_ENABLE) ? "reqenb " : "",
		t1 & (1 << DMA_REQUEST) ? "req " : "",
		t1 & (1 << DMA_BUFFER_VALID) ? "valid " : "");
	size -= t;
	next += t;

	/* USB Control Registers */
	t1 = FUNC3(dev, USBCTL1);
	if (t1 & (1 << VBUS_PIN)) {
		if (t1 & (1 << USB_HIGH_SPEED))
			s = "high speed";
		else if (dev->gadget.speed == USB_SPEED_UNKNOWN)
			s = "powered";
		else
			s = "full speed";
	} else
		s = "not attached";
	t = FUNC4(next, size,
		"usbctl0 %02x usbctl1 %02x addr 0x%02x (%s)\n",
		FUNC3(dev, USBCTL0), t1,
		FUNC3(dev, OURADDR), s);
	size -= t;
	next += t;

	/* Endpoint Registers */
	for (i = 0; i < 4; ++i) {
		struct net2272_ep *ep;

		ep = &dev->ep[i];
		if (i && !ep->desc)
			continue;

		t1 = FUNC2(ep, EP_CFG);
		t2 = FUNC2(ep, EP_RSPSET);
		t = FUNC4(next, size,
			"\n%s\tcfg %02x rsp (%02x) %s%s%s%s%s%s%s%s"
			"irqenb %02x\n",
			ep->ep.name, t1, t2,
			(t2 & (1 << ALT_NAK_OUT_PACKETS)) ? "NAK " : "",
			(t2 & (1 << HIDE_STATUS_PHASE)) ? "hide " : "",
			(t2 & (1 << AUTOVALIDATE)) ? "auto " : "",
			(t2 & (1 << INTERRUPT_MODE)) ? "interrupt " : "",
			(t2 & (1 << CONTROL_STATUS_PHASE_HANDSHAKE)) ? "status " : "",
			(t2 & (1 << NAK_OUT_PACKETS_MODE)) ? "NAKmode " : "",
			(t2 & (1 << ENDPOINT_TOGGLE)) ? "DATA1 " : "DATA0 ",
			(t2 & (1 << ENDPOINT_HALT)) ? "HALT " : "",
			FUNC2(ep, EP_IRQENB));
		size -= t;
		next += t;

		t = FUNC4(next, size,
			"\tstat0 %02x stat1 %02x avail %04x "
			"(ep%d%s-%s)%s\n",
			FUNC2(ep, EP_STAT0),
			FUNC2(ep, EP_STAT1),
			(FUNC2(ep, EP_AVAIL1) << 8) | FUNC2(ep, EP_AVAIL0),
			t1 & 0x0f,
			ep->is_in ? "in" : "out",
			FUNC7(t1 >> 5),
			ep->stopped ? "*" : "");
		size -= t;
		next += t;

		t = FUNC4(next, size,
			"\tep_transfer %06x\n",
			((FUNC2(ep, EP_TRANSFER2) & 0xff) << 16) |
			((FUNC2(ep, EP_TRANSFER1) & 0xff) << 8) |
			((FUNC2(ep, EP_TRANSFER0) & 0xff)));
		size -= t;
		next += t;

		t1 = FUNC2(ep, EP_BUFF_STATES) & 0x03;
		t2 = (FUNC2(ep, EP_BUFF_STATES) >> 2) & 0x03;
		t = FUNC4(next, size,
			"\tbuf-a %s buf-b %s\n",
			FUNC0(t1),
			FUNC0(t2));
		size -= t;
		next += t;
	}

	FUNC6(&dev->lock, flags);

	return PAGE_SIZE - size;
}