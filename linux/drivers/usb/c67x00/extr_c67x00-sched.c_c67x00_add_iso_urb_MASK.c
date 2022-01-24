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
struct urb {int number_of_packets; char* transfer_buffer; int /*<<< orphan*/  interval; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  pipe; struct c67x00_urb_priv* hcpriv; } ;
struct c67x00_urb_priv {int cnt; TYPE_2__* ep_data; } ;
struct c67x00_hcd {int /*<<< orphan*/  current_frame; } ;
struct TYPE_4__ {int /*<<< orphan*/  next_frame; } ;
struct TYPE_3__ {int offset; int length; int status; scalar_t__ actual_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int USB_PID_IN ; 
 int USB_PID_OUT ; 
 int FUNC1 (struct c67x00_hcd*,struct urb*,char*,int,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct c67x00_hcd *c67x00, struct urb *urb)
{
	struct c67x00_urb_priv *urbp = urb->hcpriv;

	if (FUNC6(c67x00->current_frame, urbp->ep_data->next_frame)) {
		char *td_buf;
		int len, pid, ret;

		FUNC0(urbp->cnt >= urb->number_of_packets);

		td_buf = urb->transfer_buffer +
		    urb->iso_frame_desc[urbp->cnt].offset;
		len = urb->iso_frame_desc[urbp->cnt].length;
		pid = FUNC7(urb->pipe) ? USB_PID_OUT : USB_PID_IN;

		ret = FUNC1(c67x00, urb, td_buf, len, pid, 0,
				       urbp->cnt);
		if (ret) {
			FUNC4(FUNC3(c67x00), "create failed: %d\n",
				ret);
			urb->iso_frame_desc[urbp->cnt].actual_length = 0;
			urb->iso_frame_desc[urbp->cnt].status = ret;
			if (urbp->cnt + 1 == urb->number_of_packets)
				FUNC2(c67x00, urb, 0);
		}

		urbp->ep_data->next_frame =
		    FUNC5(urbp->ep_data->next_frame, urb->interval);
		urbp->cnt++;
	}
	return 0;
}