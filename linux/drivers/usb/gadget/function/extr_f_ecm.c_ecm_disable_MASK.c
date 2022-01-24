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
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_8__ {TYPE_2__* in_ep; } ;
struct f_ecm {TYPE_3__* notify; TYPE_4__ port; } ;
struct TYPE_7__ {int /*<<< orphan*/ * desc; } ;
struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_5__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 struct f_ecm* FUNC1 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(struct usb_function *f)
{
	struct f_ecm		*ecm = FUNC1(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	FUNC0(cdev, "ecm deactivated\n");

	if (ecm->port.in_ep->enabled)
		FUNC2(&ecm->port);

	FUNC3(ecm->notify);
	ecm->notify->desc = NULL;
}