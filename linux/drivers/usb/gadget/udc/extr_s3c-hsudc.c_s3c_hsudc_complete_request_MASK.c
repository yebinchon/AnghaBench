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
struct TYPE_2__ {int status; } ;
struct s3c_hsudc_req {TYPE_1__ req; int /*<<< orphan*/  queue; } ;
struct s3c_hsudc_ep {unsigned int stopped; int /*<<< orphan*/  ep; int /*<<< orphan*/  bEndpointAddress; struct s3c_hsudc* dev; } ;
struct s3c_hsudc {int /*<<< orphan*/  lock; int /*<<< orphan*/  ep0state; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC0 (struct s3c_hsudc_ep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct s3c_hsudc_ep *hsep,
				struct s3c_hsudc_req *hsreq, int status)
{
	unsigned int stopped = hsep->stopped;
	struct s3c_hsudc *hsudc = hsep->dev;

	FUNC1(&hsreq->queue);
	hsreq->req.status = status;

	if (!FUNC0(hsep)) {
		hsudc->ep0state = WAIT_FOR_SETUP;
		hsep->bEndpointAddress &= ~USB_DIR_IN;
	}

	hsep->stopped = 1;
	FUNC3(&hsudc->lock);
	FUNC4(&hsep->ep, &hsreq->req);
	FUNC2(&hsudc->lock);
	hsep->stopped = stopped;
}