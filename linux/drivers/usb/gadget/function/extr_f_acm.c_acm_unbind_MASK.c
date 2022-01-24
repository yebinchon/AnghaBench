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
struct usb_configuration {int dummy; } ;
struct f_acm {scalar_t__ notify_req; int /*<<< orphan*/  notify; } ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 TYPE_1__* acm_string_defs ; 
 struct f_acm* FUNC0 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_function*) ; 

__attribute__((used)) static void FUNC3(struct usb_configuration *c, struct usb_function *f)
{
	struct f_acm		*acm = FUNC0(f);

	acm_string_defs[0].id = 0;
	FUNC2(f);
	if (acm->notify_req)
		FUNC1(acm->notify, acm->notify_req);
}