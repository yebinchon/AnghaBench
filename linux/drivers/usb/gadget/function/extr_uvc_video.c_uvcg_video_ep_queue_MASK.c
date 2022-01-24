#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uvc_video {TYPE_2__* ep; TYPE_1__* uvc; } ;
struct usb_request {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,struct usb_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC4(struct uvc_video *video, struct usb_request *req)
{
	int ret;

	ret = FUNC1(video->ep, req, GFP_ATOMIC);
	if (ret < 0) {
		FUNC3(&video->uvc->func, "Failed to queue request (%d).\n",
			 ret);

		/* Isochronous endpoints can't be halted. */
		if (FUNC0(video->ep->desc))
			FUNC2(video->ep);
	}

	return ret;
}