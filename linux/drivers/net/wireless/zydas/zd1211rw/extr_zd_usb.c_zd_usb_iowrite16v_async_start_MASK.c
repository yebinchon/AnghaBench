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
struct zd_usb {int in_async; int /*<<< orphan*/ * urb_async_waiting; scalar_t__ cmd_error; int /*<<< orphan*/  submitted_cmds; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct zd_usb*) ; 

void FUNC4(struct zd_usb *usb)
{
	FUNC0(FUNC2(&usb->submitted_cmds));
	FUNC0(usb->urb_async_waiting == NULL);
	FUNC0(!usb->in_async);

	FUNC0(FUNC1(&FUNC3(usb)->mutex));

	usb->in_async = 1;
	usb->cmd_error = 0;
	usb->urb_async_waiting = NULL;
}