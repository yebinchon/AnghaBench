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
struct seq_file {struct dwc3_ep* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;
struct dwc3_ep {int flags; TYPE_1__ endpoint; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int DWC3_EP_ENABLED ; 
#define  USB_ENDPOINT_XFER_BULK 131 
#define  USB_ENDPOINT_XFER_CONTROL 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *unused)
{
	struct dwc3_ep		*dep = s->private;
	struct dwc3		*dwc = dep->dwc;
	unsigned long		flags;

	FUNC1(&dwc->lock, flags);
	if (!(dep->flags & DWC3_EP_ENABLED) ||
			!dep->endpoint.desc) {
		FUNC0(s, "--\n");
		goto out;
	}

	switch (FUNC3(dep->endpoint.desc)) {
	case USB_ENDPOINT_XFER_CONTROL:
		FUNC0(s, "control\n");
		break;
	case USB_ENDPOINT_XFER_ISOC:
		FUNC0(s, "isochronous\n");
		break;
	case USB_ENDPOINT_XFER_BULK:
		FUNC0(s, "bulk\n");
		break;
	case USB_ENDPOINT_XFER_INT:
		FUNC0(s, "interrupt\n");
		break;
	default:
		FUNC0(s, "--\n");
	}

out:
	FUNC2(&dwc->lock, flags);

	return 0;
}