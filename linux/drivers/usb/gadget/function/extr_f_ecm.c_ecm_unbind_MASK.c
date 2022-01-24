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
struct usb_function {int dummy; } ;
struct usb_configuration {int /*<<< orphan*/  cdev; } ;
struct f_ecm {TYPE_1__* notify_req; int /*<<< orphan*/  notify; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct f_ecm* FUNC1 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_function*) ; 

__attribute__((used)) static void FUNC5(struct usb_configuration *c, struct usb_function *f)
{
	struct f_ecm		*ecm = FUNC1(f);

	FUNC0(c->cdev, "ecm unbind\n");

	FUNC4(f);

	FUNC2(ecm->notify_req->buf);
	FUNC3(ecm->notify, ecm->notify_req);
}