#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_function_instance {int dummy; } ;
struct f_uvc_opts {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct f_uvc_opts* FUNC0 (struct usb_function_instance*) ; 
 int /*<<< orphan*/  FUNC1 (struct f_uvc_opts*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_function_instance *f)
{
	struct f_uvc_opts *opts = FUNC0(f);

	FUNC2(&opts->lock);
	FUNC1(opts);
}