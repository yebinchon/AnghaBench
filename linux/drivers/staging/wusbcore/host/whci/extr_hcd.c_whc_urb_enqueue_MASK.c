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
struct wusbhc {int dummy; } ;
struct whc {TYPE_1__* umc; } ;
struct usb_hcd {int dummy; } ;
struct urb {int /*<<< orphan*/  pipe; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIPE_BULK 131 
#define  PIPE_CONTROL 130 
#define  PIPE_INTERRUPT 129 
#define  PIPE_ISOCHRONOUS 128 
 int FUNC0 (struct whc*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct whc*,struct urb*,int /*<<< orphan*/ ) ; 
 struct wusbhc* FUNC3 (struct usb_hcd*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct whc* FUNC5 (struct wusbhc*) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *usb_hcd, struct urb *urb,
			   gfp_t mem_flags)
{
	struct wusbhc *wusbhc = FUNC3(usb_hcd);
	struct whc *whc = FUNC5(wusbhc);
	int ret;

	switch (FUNC4(urb->pipe)) {
	case PIPE_INTERRUPT:
		ret = FUNC2(whc, urb, mem_flags);
		break;
	case PIPE_ISOCHRONOUS:
		FUNC1(&whc->umc->dev, "isochronous transfers unsupported\n");
		ret = -ENOTSUPP;
		break;
	case PIPE_CONTROL:
	case PIPE_BULK:
	default:
		ret = FUNC0(whc, urb, mem_flags);
		break;
	}

	return ret;
}