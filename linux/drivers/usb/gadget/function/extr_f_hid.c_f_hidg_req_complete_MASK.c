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
struct usb_request {int /*<<< orphan*/  status; } ;
struct usb_ep {scalar_t__ driver_data; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct f_hidg {int /*<<< orphan*/  write_queue; int /*<<< orphan*/  write_spinlock; scalar_t__ write_pending; TYPE_2__ func; } ;
struct TYPE_3__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_ep *ep, struct usb_request *req)
{
	struct f_hidg *hidg = (struct f_hidg *)ep->driver_data;
	unsigned long flags;

	if (req->status != 0) {
		FUNC0(hidg->func.config->cdev,
			"End Point Request ERROR: %d\n", req->status);
	}

	FUNC1(&hidg->write_spinlock, flags);
	hidg->write_pending = 0;
	FUNC2(&hidg->write_spinlock, flags);
	FUNC3(&hidg->write_queue);
}