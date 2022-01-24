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
typedef  int /*<<< orphan*/  v4l2_event ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct v4l2_event {int /*<<< orphan*/  type; TYPE_1__ u; } ;
struct uvc_event {int /*<<< orphan*/  req; } ;
struct uvc_device {int event_setup_out; int /*<<< orphan*/  vdev; scalar_t__ event_length; } ;
struct usb_function {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  wLength; } ;

/* Variables and functions */
 int EINVAL ; 
 int USB_DIR_IN ; 
 int USB_TYPE_CLASS ; 
 int USB_TYPE_MASK ; 
 int /*<<< orphan*/  UVC_EVENT_SETUP ; 
 scalar_t__ UVC_MAX_REQUEST_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct usb_ctrlrequest const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_event*,int /*<<< orphan*/ ,int) ; 
 struct uvc_device* FUNC3 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_function*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct v4l2_event*) ; 

__attribute__((used)) static int
FUNC6(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
{
	struct uvc_device *uvc = FUNC3(f);
	struct v4l2_event v4l2_event;
	struct uvc_event *uvc_event = (void *)&v4l2_event.u.data;

	if ((ctrl->bRequestType & USB_TYPE_MASK) != USB_TYPE_CLASS) {
		FUNC4(f, "invalid request type\n");
		return -EINVAL;
	}

	/* Stall too big requests. */
	if (FUNC0(ctrl->wLength) > UVC_MAX_REQUEST_SIZE)
		return -EINVAL;

	/* Tell the complete callback to generate an event for the next request
	 * that will be enqueued by UVCIOC_SEND_RESPONSE.
	 */
	uvc->event_setup_out = !(ctrl->bRequestType & USB_DIR_IN);
	uvc->event_length = FUNC0(ctrl->wLength);

	FUNC2(&v4l2_event, 0, sizeof(v4l2_event));
	v4l2_event.type = UVC_EVENT_SETUP;
	FUNC1(&uvc_event->req, ctrl, sizeof(uvc_event->req));
	FUNC5(&uvc->vdev, &v4l2_event);

	return 0;
}