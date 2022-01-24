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
struct usb_function {scalar_t__ os_desc_n; int /*<<< orphan*/  os_desc_table; } ;
struct usb_configuration {int dummy; } ;
struct f_rndis {TYPE_1__* notify_req; int /*<<< orphan*/  notify; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct f_rndis* FUNC0 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_function*) ; 

__attribute__((used)) static void FUNC4(struct usb_configuration *c, struct usb_function *f)
{
	struct f_rndis		*rndis = FUNC0(f);

	FUNC1(f->os_desc_table);
	f->os_desc_n = 0;
	FUNC3(f);

	FUNC1(rndis->notify_req->buf);
	FUNC2(rndis->notify, rndis->notify_req);
}