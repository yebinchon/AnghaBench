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
struct f_ncm {int timer_stopping; TYPE_3__* notify; TYPE_4__ port; int /*<<< orphan*/ * netdev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * desc; scalar_t__ enabled; } ;
struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_5__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 struct f_ncm* FUNC1 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(struct usb_function *f)
{
	struct f_ncm		*ncm = FUNC1(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	FUNC0(cdev, "ncm deactivated\n");

	if (ncm->port.in_ep->enabled) {
		ncm->timer_stopping = true;
		ncm->netdev = NULL;
		FUNC2(&ncm->port);
	}

	if (ncm->notify->enabled) {
		FUNC3(ncm->notify);
		ncm->notify->desc = NULL;
	}
}