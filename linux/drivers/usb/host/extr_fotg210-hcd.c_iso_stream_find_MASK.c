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
struct usb_host_endpoint {struct fotg210_iso_stream* hcpriv; } ;
struct urb {int /*<<< orphan*/  pipe; TYPE_1__* dev; int /*<<< orphan*/  interval; } ;
struct fotg210_iso_stream {int /*<<< orphan*/ * hw; struct usb_host_endpoint* ep; } ;
struct fotg210_hcd {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  devpath; struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*,char*,int /*<<< orphan*/ ,unsigned int,char*) ; 
 struct fotg210_iso_stream* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_hcd*,struct fotg210_iso_stream*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fotg210_iso_stream *FUNC9(struct fotg210_hcd *fotg210,
		struct urb *urb)
{
	unsigned epnum;
	struct fotg210_iso_stream *stream;
	struct usb_host_endpoint *ep;
	unsigned long flags;

	epnum = FUNC7(urb->pipe);
	if (FUNC8(urb->pipe))
		ep = urb->dev->ep_in[epnum];
	else
		ep = urb->dev->ep_out[epnum];

	FUNC4(&fotg210->lock, flags);
	stream = ep->hcpriv;

	if (FUNC6(stream == NULL)) {
		stream = FUNC1(GFP_ATOMIC);
		if (FUNC3(stream != NULL)) {
			ep->hcpriv = stream;
			stream->ep = ep;
			FUNC2(fotg210, stream, urb->dev, urb->pipe,
					urb->interval);
		}

	/* if dev->ep[epnum] is a QH, hw is set */
	} else if (FUNC6(stream->hw != NULL)) {
		FUNC0(fotg210, "dev %s ep%d%s, not iso??\n",
				urb->dev->devpath, epnum,
				FUNC8(urb->pipe) ? "in" : "out");
		stream = NULL;
	}

	FUNC5(&fotg210->lock, flags);
	return stream;
}