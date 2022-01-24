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
struct usb_composite_dev {TYPE_1__* gadget; } ;
struct TYPE_7__ {TYPE_2__* config; } ;
struct TYPE_8__ {TYPE_3__ func; } ;
struct f_acm {int pending; int /*<<< orphan*/  lock; int /*<<< orphan*/  serial_state; int /*<<< orphan*/  port_num; scalar_t__ notify_req; TYPE_4__ port; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {struct usb_composite_dev* cdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CDC_NOTIFY_SERIAL_STATE ; 
 int FUNC0 (struct f_acm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct f_acm *acm)
{
	struct usb_composite_dev *cdev = acm->port.func.config->cdev;
	int			status;
	__le16			serial_state;

	FUNC3(&acm->lock);
	if (acm->notify_req) {
		FUNC2(&cdev->gadget->dev, "acm ttyGS%d serial state %04x\n",
			acm->port_num, acm->serial_state);
		serial_state = FUNC1(acm->serial_state);
		status = FUNC0(acm, USB_CDC_NOTIFY_SERIAL_STATE,
				0, &serial_state, sizeof(acm->serial_state));
	} else {
		acm->pending = true;
		status = 0;
	}
	FUNC4(&acm->lock);
	return status;
}