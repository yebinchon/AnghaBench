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
struct usb_request {int dummy; } ;
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_midi {int /*<<< orphan*/  in_ep; int /*<<< orphan*/  in_req_fifo; int /*<<< orphan*/  out_ep; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct f_midi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct usb_request*) ; 
 struct f_midi* FUNC3 (struct usb_function*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct usb_request**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usb_function *f)
{
	struct f_midi *midi = FUNC3(f);
	struct usb_composite_dev *cdev = f->config->cdev;
	struct usb_request *req = NULL;

	FUNC0(cdev, "disable\n");

	/*
	 * just disable endpoints, forcing completion of pending i/o.
	 * all our completion handlers free their requests in this case.
	 */
	FUNC5(midi->in_ep);
	FUNC5(midi->out_ep);

	/* release IN requests */
	while (FUNC4(&midi->in_req_fifo, &req))
		FUNC2(midi->in_ep, req);

	FUNC1(midi);
}