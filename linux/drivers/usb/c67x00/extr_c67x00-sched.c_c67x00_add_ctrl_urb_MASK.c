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
struct urb {int interval; int /*<<< orphan*/  pipe; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; int /*<<< orphan*/ * setup_packet; } ;
struct c67x00_hcd {int dummy; } ;

/* Variables and functions */
#define  DATA_STAGE 130 
#define  SETUP_STAGE 129 
#define  STATUS_STAGE 128 
 int USB_PID_IN ; 
 int USB_PID_OUT ; 
 int USB_PID_SETUP ; 
 int FUNC0 (struct c67x00_hcd*,struct urb*) ; 
 int FUNC1 (struct c67x00_hcd*,struct urb*,int /*<<< orphan*/ *,int,int,int,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct c67x00_hcd *c67x00, struct urb *urb)
{
	int ret;
	int pid;

	switch (urb->interval) {
	default:
	case SETUP_STAGE:
		ret = FUNC1(c67x00, urb, urb->setup_packet,
				       8, USB_PID_SETUP, 0, SETUP_STAGE);
		if (ret)
			return ret;
		urb->interval = SETUP_STAGE;
		FUNC4(urb->dev, FUNC2(urb->pipe),
			      FUNC3(urb->pipe), 1);
		break;
	case DATA_STAGE:
		if (urb->transfer_buffer_length) {
			ret = FUNC0(c67x00, urb);
			if (ret)
				return ret;
			break;
		}		/* else fallthrough */
	case STATUS_STAGE:
		pid = !FUNC3(urb->pipe) ? USB_PID_OUT : USB_PID_IN;
		ret = FUNC1(c67x00, urb, NULL, 0, pid, 1,
				       STATUS_STAGE);
		if (ret)
			return ret;
		break;
	}

	return 0;
}