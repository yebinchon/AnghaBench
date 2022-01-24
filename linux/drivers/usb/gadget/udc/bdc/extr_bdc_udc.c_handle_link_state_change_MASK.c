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
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  speed; } ;
struct bdc {int devstatus; int /*<<< orphan*/  dev; TYPE_2__ gadget; TYPE_1__* gadget_driver; int /*<<< orphan*/  func_wake_notify; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* resume ) (TYPE_2__*) ;int /*<<< orphan*/  (* suspend ) (TYPE_2__*) ;} ;

/* Variables and functions */
#define  BDC_LINK_STATE_RESUME 130 
#define  BDC_LINK_STATE_U0 129 
#define  BDC_LINK_STATE_U3 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BDC_TNOTIFY ; 
 int DEVICE_SUSPENDED ; 
 int FUNC_WAKE_ISSUED ; 
 int REMOTE_WAKEUP_ISSUED ; 
 int /*<<< orphan*/  USB_SPEED_SUPER ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct bdc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(struct bdc *bdc, u32 uspc)
{
	u32 link_state;

	FUNC2(bdc->dev, "Link state change");
	link_state = FUNC0(uspc);
	switch (link_state) {
	case BDC_LINK_STATE_U3:
		if ((bdc->gadget.speed != USB_SPEED_UNKNOWN) &&
						bdc->gadget_driver->suspend) {
			FUNC2(bdc->dev, "Entered Suspend mode\n");
			FUNC6(&bdc->lock);
			bdc->devstatus |= DEVICE_SUSPENDED;
			bdc->gadget_driver->suspend(&bdc->gadget);
			FUNC5(&bdc->lock);
		}
		break;
	case BDC_LINK_STATE_U0:
		if (bdc->devstatus & REMOTE_WAKEUP_ISSUED) {
					bdc->devstatus &= ~REMOTE_WAKEUP_ISSUED;
			if (bdc->gadget.speed == USB_SPEED_SUPER) {
				FUNC1(bdc, 0);
				bdc->devstatus |= FUNC_WAKE_ISSUED;
				/*
				 * Start a Notification timer and check if the
				 * Host transferred anything on any of the EPs,
				 * if not then send function wake again every
				 * TNotification secs until host initiates
				 * transfer to BDC, USB3 spec Table 8.13
				*/
				FUNC4(
						&bdc->func_wake_notify,
						FUNC3(BDC_TNOTIFY));
				FUNC2(bdc->dev, "sched func_wake_notify\n");
			}
		}
		break;

	case BDC_LINK_STATE_RESUME:
		FUNC2(bdc->dev, "Resumed from Suspend\n");
		if (bdc->devstatus & DEVICE_SUSPENDED) {
			bdc->gadget_driver->resume(&bdc->gadget);
			bdc->devstatus &= ~DEVICE_SUSPENDED;
		}
		break;
	default:
		FUNC2(bdc->dev, "link state:%d\n", link_state);
	}
}